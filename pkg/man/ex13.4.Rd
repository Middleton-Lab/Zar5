\name{ex13.4}
\alias{ex13.4}

\docType{data}

\title{
Zar Data Set: ex13.3
}

\description{
Zar Data Set: ex13.3
}

\usage{data(ex13.4)}
\format{
  A data frame with 7 observations on the following 2 variables.
  \describe{
    \item{\code{insecticide1}}{a numeric vector}
    \item{\code{insecticide2}}{a numeric vector}
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
data(ex13.4)
str(ex13.4)

asin.ex13.3 <- asin(sqrt(ex13.4/100))
asin.ex13.3 * 180 / pi
mean(asin.ex13.3 * 180 / pi)
}

\keyword{datasets}
