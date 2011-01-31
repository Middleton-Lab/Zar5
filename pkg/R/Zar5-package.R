

#' Zar5
#' Data sets and example code for Zar's Biostatistical Analysis (5th Edition).
#' 
#' \tabular{ll}{ 
#'	Package: \tab Zar5\cr
#'	Type: \tab Package\cr
#'	Version: \tab 0.1-3\cr
#'	Date: \tab 2011-01-30\cr
#'	License: \tab GPL\cr
#'	LazyLoad: \tab yes\cr
#'  LazyData: \tab yes\cr }
#' 
#' @name Zar5-package
#' @aliases Zar5-package Zar5
#' @docType package
#' @author Kevin Middleton (\email{kmm@@csusb.edu})
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords package
NULL





#' Zar Data Set: ex08.11
#'
#' Zar Data Set: ex08.11
#' 
#' 
#' @name ex08.08
#' @docType data
#' @format The format is: List of 2 \describe{ \item{$Weight}{: num [1:10] 72.5
#'   71.7 60.8 63.2 71.4 73.1 77.9 75.7 72 69} \item{$Height}{: num [1:11] 183
#'   172 180 190 191 ...} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex08.08)
#' str(ex08.08)
#' 
#' Weight <- ex08.08$Weight
#' Height <- ex08.08$Height
#' 
#' (n.W <- length(Weight))
#' (df.W <- n.W - 1)
#' (mean.W <- mean(Weight)) 
#' (SS.W <- sum((Weight - mean.W)^2))
#' (s2.W <- var(Weight))
#' (s.W <- sd(Weight))
#' (V.W <- s.W / mean.W)
#' log.W <- log10(Weight)
#' (SS.log.W <- sum((log.W - mean(log.W))^2))
#' (var.log.W <- var(log.W))
#' 
#' (n.H <- length(Height))
#' (df.H <- n.H - 1)
#' (mean.H <- mean(Height)) 
#' (SS.H <- sum((Height - mean.H)^2))
#' (s2.H <- var(Height))
#' (s.H <- sd(Height))
#' (V.H <- s.H / mean.H)
#' log.H <- log10(Height)
#' (SS.log.H <- sum((log.H - mean(log.H))^2))
#' (var.log.H <- var(log.H))
#' 
#' # Variance-ratio test
#' (F <- var.log.W / var.log.H)
#' 2 * pf(F, df1 = df.W, df2 = df.H, lower.tail = FALSE)
#' 
#' # Z test
#' (V.p <- (df.W * V.W + df.H * V.H) / (df.W + df.H))
#' (V.p2 <- V.p^2)
#' (Z <- (V.W - V.H) / sqrt((V.p2 / df.W + V.p2 / df.H) * (0.5 + V.p2)))
#' 2 * pnorm(abs(Z), lower.tail = FALSE)
#' 
#' # Using CV.test
#' CV.test(Weight, Height, test = "F")
#' CV.test(Weight, Height, test = "Z")
#' 
NULL





#' Zar Data Set: ex08.11
#'
#' Zar Data Set: ex08.11
#' 
#' 
#' @name ex08.11
#' @docType data
#' @format The format is: List of 2 \describe{ \item{$Males}{: num [1:7] 193
#'   188 185 183 180 175 170} \item{$Females}{: num [1:5] 178 173 168 165 163}
#'   }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' demo(ex08.11)
#' 
NULL





#' Zar Data Set: ex10.01
#'
#' Zar Data Set: ex10.01
#' 
#' 
#' @name ex10.01
#' @docType data
#' @format A data frame with 20 observations on the following 2 variables.
#'   \describe{ \item{list("X")}{a numeric vector} \item{list("Feed")}{a factor
#'   with levels \code{1}, \code{2}, \code{3}, and \code{4}} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex10.01)
#' str(ex10.01)
#' 
#' summary(aov(X ~ Feed, data = ex10.01))
#' 
NULL





#' Zar Data Set: ex10.02
#'
#' Zar Data Set: ex10.02
#' 
#' 
#' @name ex10.02
#' @docType data
#' @format A data frame with 20 observations on the following 2 variables.
#'   \describe{ \item{list("X")}{a numeric vector} \item{list("Tech")}{a factor
#'   with levels \code{1}, \code{2}, \code{3}, and \code{4}} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex10.02)
#' str(ex10.02)
#' 
#' mod1 <- aov(X ~ Tech, data = ex10.02)
#' summary(mod1)
#' 
#' mod2 <- aov(X ~ 1 + Error(Tech), data = ex10.02)
#' summary(mod2)
#' 
NULL





#' Zar Data Set: ex12.01
#'
#' Zar Data Set: ex12.01
#' 
#' 
#' @name ex12.01
#' @docType data
#' @format A data frame with 20 observations on the following 3 variables.
#'   \describe{ \item{list("Ca")}{a numeric vector} \item{list("Trt")}{a factor
#'   with levels \code{No} and \code{Yes}} \item{list("Sex")}{a factor with
#'   levels \code{F} and \code{M}} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex12.01)
#' str(ex12.01)
#' summary(aovfit <- aov(Ca ~ Trt * Sex, data = ex12.01))
#' 
NULL





#' Zar Data Set: ex13.03
#'
#' Zar Data Set: ex13.03
#' 
#' 
#' @name ex13.03
#' @docType data
#' @format A data frame with 5 observations on the following 4 variables.
#'   \describe{ \item{list("Group.1")}{a numeric vector}
#'   \item{list("Group.2")}{a numeric vector} \item{list("Group.3")}{a numeric
#'   vector} \item{list("Group.4")}{a numeric vector} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex13.03)
#' str(ex13.03)
#' 
#' mean(ex13.03)
#' apply(ex13.03, 2, var)
#' 
#' x <- sqrt(ex13.03 + 0.5)
#' x
#' mean(x)
#' apply(x, 2, var)
#' apply(x, 2, FUN = function(x) sd(x)/sqrt(length(x)))
#' 
#' mean(x)^2 - 0.5
#' 
NULL





#' Zar Data Set: ex13.3
#'
#' Zar Data Set: ex13.3
#' 
#' 
#' @name ex13.04
#' @docType data
#' @format A data frame with 7 observations on the following 2 variables.
#'   \describe{ \item{list("insecticide1")}{a numeric vector}
#'   \item{list("insecticide2")}{a numeric vector} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex13.04)
#' str(ex13.04)
#' 
#' asin.ex13.3 <- asin(sqrt(ex13.04/100))
#' asin.ex13.3 * 180 / pi
#' mean(asin.ex13.3 * 180 / pi)
#' 
NULL





#' Zar Data Set: ex15.01
#'
#' Zar Data Set: ex15.01
#' 
#' 
#' @name ex15.01
#' @docType data
#' @format A data frame with 12 observations on the following 3 variables.
#'   \describe{ \item{list("Chol")}{a numeric vector} \item{list("Drug")}{a
#'   factor with levels \code{1}, \code{2}, and \code{3}}
#'   \item{list("Source")}{a factor with levels \code{A}, \code{B}, \code{D},
#'   \code{L}, \code{Q}, and \code{S}} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex15.01)
#' str(ex15.01)
#' 
#' aovfit1 <- aov(Chol ~ Drug + Drug/Source, data = ex15.01)
#' summary(aovfit1)
#' 
#' \dontrun{
#' aovfit2 <- aov(Chol ~ Drug + Source %in% Drug, data = ex15.01)
#' summary(aovfit2)
#' }
#' 
NULL





#' Zar Data Set: ex16.01
#'
#' Zar Data Set: ex16.01
#' 
#' 
#' @name ex16.01
#' @docType data
#' @format A data frame with 20 observations on the following 3 variables.
#'   \describe{ \item{list("fat")}{a numeric vector} \item{list("lean")}{a
#'   numeric vector} \item{list("month")}{a factor with levels \code{Dec},
#'   \code{Feb}, \code{Jan}, and \code{Mar}} }
#' @references Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
#'   Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
#'   ISBN-13: 978013100846.
#'   \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
#' @keywords datasets
#' @examples
#' 
#' data(ex16.01)
#' str(ex16.01)
#' 
#' # MANOVA
#' Y <- cbind(ex16.01$fat, ex16.01$lean)
#' mano1 <- manova(Y ~ month, data = ex16.01)
#' 
#' # Multivariate
#' summary(mano1, test = "Wilks")             # Exact
#' summary(mano1, test = "Pillai")            # Close
#' summary(mano1, test = "Hotelling-Lawley")  # Close
#' summary(mano1, test = "Roy")               # Close
#' 
#' # Univariate
#' summary.aov(mano1)
#' 
#' # MANCOVA
#' # Add a continuous variable x. Make up random data
#' x <- rnorm(nrow(ex16.01))
#' mano2 <- manova(Y ~ month * x, data = ex16.01)
#' 
#' # Multivariate
#' summary(mano2, test = "Wilks")
#' summary(mano2, test = "Pillai")
#' summary(mano2, test = "Hotelling-Lawley")
#' summary(mano2, test = "Roy")
#' 
#' # Univariate
#' summary.aov(mano2)
#' 
NULL





