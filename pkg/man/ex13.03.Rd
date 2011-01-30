\name{ex13.03}
\alias{ex13.03}
\alias{ex13.03}
\title{Zar Data Set: ex13...}
\description{Zar Data Set: ex13.03
Zar Data Set: ex13.03}
\docType{data}
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

