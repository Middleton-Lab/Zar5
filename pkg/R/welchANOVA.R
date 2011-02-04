##' Welch's Test for an ANOVA experimental design with non-equal variances. 
##'
##' Welch's Test for an ANOVA experimental design with non-equal variances.
##' 
##' @title ANOVA using Welch's Correction
##' 
##' @param y A vector of the response variable
##' @param A A vector of the categorical predictor variable
##' 
##' @return An object of class \code{welchANOVA} containing:
##' \describe{
##' \item{\code{dat}}{The original data in \code{data.frame} format}
##' \item{\code{Fprime}}{Modified F statistic for the test}
##' \item{\code{df1}}{Numerator degrees of freedom}
##' \item{\code{df2}}{Denominator degrees of freedom}
##' \item{\code{P}}{P-value for the test}
##' }
##' 
##' @author Kevin Middleton (\email{kmm@@csusb.edu})
##' 
##' @references
##' Welch, B.L. 1951. On the comparison of several mean values: an alternative approach.
##'   \emph{Biometrika} 38: 330-336.
##' 
##' Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}. Pearson
##'   Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463. ISBN-13:
##'   978013100846.
##'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
##'
##' @examples
##' K <- c(27.9, 27.0, 26.0, 26.5, 27.0, 27.5,
##'        24.2, 24.7, 25.6, 26.0, 27.4, 26.1,
##'        29.1, 27.7, 29.9, 30.7, 28.8, 31.1)
##' Variety <- factor(rep(c("G", "A", "L"), each  = 6))
##' 
##' welchANOVA(K, Variety)
##' 
welchANOVA <- function(y, A){
  dat <- data.frame(y, A)
  k <- length(levels(dat$A))
  smry <- ddply(dat, .(A), function(x)c(n = length(x$y),
                                       df = length(x$y) - 1,
                                       Mean = mean(x$y),
                                       Variance = var(x$y)))
  ci <- smry$n / smry$Variance
  C <- sum(ci)

  ciXbar <- ci * smry$Mean
  sumciXbar <- sum(ciXbar)
  
  Ai <- (1 - ci / C)^2 / smry$df
  A <- sum(Ai)

  Xbar_w <- sumciXbar / C

  Fprime <- sum(ci * (smry$Mean - Xbar_w)^2) / ( (k - 1) * (1 + ((2 * A) * (k - 2)) / (k^2 - 1) ) )

  df1 <- k - 1
  df2 <- (k^2 - 1) / (3 * A)

  Fcrit <- qf(0.05, df1 = df1, df2 = df2, lower.tail = FALSE)

  P <- pf(Fprime, df1 = df1, df2 = df2, lower.tail = FALSE)

  zz <- list(dat = dat, Fprime = Fprime, df1 = df1, df2 = df2, P = P)
  class(zz) <- "welchANOVA"
  return(zz)
}



