#' Coefficient of Variation Test
#' \code{CV.test} tests for the difference in coefficients of variations for
#' two variables (\code{x1} and \code{x2}), using either a variance ratio
#' (\emph{F}) test (default) or a \emph{Z} test.
#' 
#' The variance-ratio test was described by Lewontin (1966), but apparently
#' dates back to Wright (1952) and Bader and Lehman (1965). This test involves
#' a ratio of log-transformed variances, which follows an \emph{F}-distribution
#' with \eqn{n_{1}-1}{n1-1} and \eqn{n_{2}-1}{n2-1} degrees of freedom.
#' 
#' Miller (1991) describes a \emph{Z} test that does not involve a
#' log-transformation, provided that the data are positive and normally
#' distributed. The \emph{Z} test performs best if the coefficients of
#' variation are less than 0.33.
#' 
#' @aliases CV.test print.CV.test
#' @param x1,x2 numeric vectors
#' @param test the type of test to perform, "F" for a variance-ratio test or
#'   "Z" for a \emph{Z} test.
#' @return \item{CV1, CV2 }{Coefficients of variation for \code{x1} and
#'   \code{x2}. If \code{test = "F"}, the coefficients of variation are reported in
#'   the original (non-log-transformed) units.}
#'   \item{test}{The type of test performed, "F" or "Z"}
#'   \item{test.stat}{The test statistic for \code{test}}
#'   \item{p}{P-value for the test statistic}
#' 
#' @author Kevin Middleton (\email{kmm@@csusb.edu})
#' 
#' @references Bader, R.S. and W.H. Lehman. 1965. Phenotypic and genotypic
#'   variation in odontometric traits of the house mouse. \emph{American
#'   Midlands Naturalist} 74: 28-38.
#' 
#' Lewontin, R.C. 1966. On the measurement of relative variability.
#'   \emph{Systematic Zoology} 15: 141-142.
#'   \url{http://www.jstor.org/stable/2411632}
#' 
#' Miller, G.E. 1991. Asymptotic test statistics for coefficients of variation.
#'   \emph{Communications in Statistics-Theory and Methods} 20: 2251-2262.
#' 
#' Wright, S. 1952. The genetics of quantitative variability. \emph{In:} Reeve,
#'   E.C.R. and C. Waddington (eds.). \emph{Quantitative Inheritance}. pp.
#'   5-41. H.M.S.O., London.
#' 
#' Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}. Pearson
#'   Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463. ISBN-13:
#'   978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' 
#' @keywords univar
#' 
#' @examples
#' 
#' Weight <- ex08.08$Weight
#' Height <- ex08.08$Height
#' CV.test(Weight, Height, test = "F")
#' CV.test(Weight, Height, test = "Z")
#' 
CV.test <- function(x1, x2, test = "F"){
  n.x1 <- length(x1)
  df.x1 <- n.x1 - 1
  mean.x1 <- mean(x1, na.rm = TRUE)
  s.x1 <- sd(x1, na.rm = TRUE)
  V.x1 <- s.x1 / mean.x1            # Coefficient of variation

  n.x2 <- length(x2)
  df.x2 <- n.x2 - 1
  mean.x2 <- mean(x2, na.rm = TRUE)
  s.x2 <- sd(x2, na.rm = TRUE)
  V.x2 <- s.x2 / mean.x2

  # Variance-ratio test
  if (test == "F"){
    log.x1 <- log(x1)
    log.x2 <- log(x2)
    s2.x1 <- var(log.x1, na.rm = TRUE)
    s2.x2 <- var(log.x2, na.rm = TRUE)
    test.stat <- s2.x1 / s2.x2
    p <- 2 * pf(test.stat, df1 = df.x1, df2 = df.x2, lower.tail = FALSE)
  }

  # Z test
  if (test == "Z"){
    # Pooled coefficient of variation
    V.p <- (df.x1 * V.x1 + df.x2 * V.x2) / (df.x1 + df.x2)
    V.p2 <- V.p^2
    test.stat <- (V.x1 - V.x2) / sqrt((V.p2 / df.x1 + V.p2 / df.x2) * 
      (0.5 + V.p2))
    p <- 2 * pnorm(abs(test.stat), lower.tail = FALSE)
  }

  zz <- list(CV1 = V.x1, CV2 = V.x2, test = test, test.stat = test.stat,
    p = p)
  class(zz) <- "CV.test"
  zz
}

print.CV.test <- function(x, ...){
  cat("\nTest of Difference Between Coefficients of Variation\n\n")
  
  cat("Coefficients of Variation:\n")
  cat("\t x1\t\t\t x2\n")
  cat("\t", x$CV1, "\t", x$CV2, "\n\n")

  if (x$test =="F"){
    cat("Variance-ratio test\n")
    cat("\tF =", x$test.stat, "\tP =", x$p, "\n\n")
    cat("Note: data were log transformed prior to test.\n")
    cat("\tCoefficients of variation are reported\n")
    cat("\tin the original units.\n")

  } else {
    cat("Z test\n")
    cat("\tZ =", x$test.stat, "\tP =", x$p)
  }
}
