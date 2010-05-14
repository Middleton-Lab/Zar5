\name{ex15.01}
\alias{ex15.01}

\docType{data}

\title{
Zar Data Set: ex15.01
}

\description{
Zar Data Set: ex15.01
}

\usage{data(ex15.01)}

\format{
  A data frame with 12 observations on the following 3 variables.
  \describe{
    \item{\code{Chol}}{a numeric vector}
    \item{\code{Drug}}{a factor with levels \code{1}, \code{2}, and \code{3}}
    \item{\code{Source}}{a factor with levels \code{A}, \code{B}, \code{D}, \code{L}, \code{Q}, and \code{S}}
  }
}

%\details{
%%  ~~ If necessary, more details than the __description__ above ~~
%}

\source{
Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}. Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463. ISBN-13: 978013100846. \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
}

%\references{
%%  ~~ possibly secondary sources and usages ~~
%}

\examples{
data(ex15.01)
str(ex15.01)

aovfit1 <- aov(Chol ~ Drug + Drug/Source, data = ex15.01)
summary(aovfit1)

\dontrun{
aovfit2 <- aov(Chol ~ Drug + Source %in% Drug, data = ex15.01)
summary(aovfit2)
}
}

\keyword{datasets}
