\name{ex15.01}
\alias{ex15.01}
\alias{ex15.01}
\title{Zar Data Set: ex15...}
\description{Zar Data Set: ex15.01}
\details{Zar Data Set: ex15.01}
\docType{data}
\references{Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}.
Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463.
ISBN-13: 978013100846.
\url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}}
\keyword{datasets}
\examples{data(ex15.01)
str(ex15.01)

aovfit1 <- aov(Chol ~ Drug + Drug/Source, data = ex15.01)
summary(aovfit1)

\dontrun{
aovfit2 <- aov(Chol ~ Drug + Source %in% Drug, data = ex15.01)
summary(aovfit2)
}}

