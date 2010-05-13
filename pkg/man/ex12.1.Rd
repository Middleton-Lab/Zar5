\name{ex12.1}
\alias{ex12.1}

\docType{data}

\title{
Zar Data Set: ex12.1
}

\description{
Zar Data Set: ex12.1
}

\usage{data(ex12.1)}

\format{
  A data frame with 20 observations on the following 3 variables.
  \describe{
    \item{\code{Ca}}{a numeric vector}
    \item{\code{Trt}}{a factor with levels \code{No} and \code{Yes}}
    \item{\code{Sex}}{a factor with levels \code{F} and \code{M}}
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
data(ex12.1)
str(ex12.1)
summary(aovfit <- aov(Ca ~ Trt * Sex, data = ex12.1))
}

\keyword{datasets}
