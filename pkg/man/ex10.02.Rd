\name{ex10.02}
\alias{ex10.02}
\alias{ex10.02}
\title{Zar Data Set: ex10...}
\description{Zar Data Set: ex10.02}
\details{Zar Data Set: ex10.02}
\docType{data}
\references{Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
ISBN-13: 978013100846.
\url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}}
\keyword{datasets}
\examples{data(ex10.02)
str(ex10.02)

mod1 <- aov(X ~ Tech, data = ex10.02)
summary(mod1)

mod2 <- aov(X ~ 1 + Error(Tech), data = ex10.02)
summary(mod2)}

