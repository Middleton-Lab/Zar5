\name{ex15.01}
\alias{ex15.01}
\alias{ex15.01}
\title{Zar Data Set: ex15...}
\description{Zar Data Set: ex15.01
Zar Data Set: ex15.01}
\docType{data}
\keyword{datasets}
\examples{data(ex15.01)
str(ex15.01)

aovfit1 <- aov(Chol ~ Drug + Drug/Source, data = ex15.01)
summary(aovfit1)

\dontrun{
aovfit2 <- aov(Chol ~ Drug + Source %in% Drug, data = ex15.01)
summary(aovfit2)
}}

