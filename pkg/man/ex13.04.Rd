\name{ex13.04}
\alias{ex13.04}
\alias{ex13.04}
\title{Zar Data Set: ex13...}
\description{Zar Data Set: ex13.3}
\details{Zar Data Set: ex13.3}
\docType{data}
\references{Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
ISBN-13: 978013100846.
\url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}}
\keyword{datasets}
\examples{data(ex13.04)
str(ex13.04)

asin.ex13.3 <- asin(sqrt(ex13.04/100))
asin.ex13.3 * 180 / pi
mean(asin.ex13.3 * 180 / pi)}

