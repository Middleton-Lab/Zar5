\name{ex13.03}
\alias{ex13.03}
\alias{ex13.03}
\title{Zar Data Set: ex13...}
\description{Zar Data Set: ex13.03}
\details{Zar Data Set: ex13.03}
\docType{data}
\references{Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
ISBN-13: 978013100846.
\url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}}
\keyword{datasets}
\examples{data(ex13.03)
str(ex13.03)

mean(ex13.03)
apply(ex13.03, 2, var)

x <- sqrt(ex13.03 + 0.5)
x
mean(x)
apply(x, 2, var)
apply(x, 2, FUN = function(x) sd(x)/sqrt(length(x)))

mean(x)^2 - 0.5}

