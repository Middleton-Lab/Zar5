\name{ex10.02}
\alias{ex10.02}
\alias{ex10.02}
\title{Zar Data Set: ex10...}
\description{Zar Data Set: ex10.02
Zar Data Set: ex10.02}
\docType{data}
\keyword{datasets}
\examples{data(ex10.02)
str(ex10.02)

mod1 <- aov(X ~ Tech, data = ex10.02)
summary(mod1)

mod2 <- aov(X ~ 1 + Error(Tech), data = ex10.02)
summary(mod2)}

