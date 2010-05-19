\name{ex10.02}
\alias{ex10.02}

\docType{data}

\title{
Zar Data Set: ex10.02
}

\description{
Zar Data Set: ex10.02
}

\usage{data(ex10.02)}
\format{
  A data frame with 20 observations on the following 2 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{Tech}}{a factor with levels \code{1}, \code{2}, \code{3}, and \code{4}}
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
data(ex10.02)
str(ex10.02)

mod1 <- aov(X ~ Tech, data = ex10.02)
summary(mod1)

mod2 <- aov(X ~ 1 + Error(Tech), data = ex10.02)
summary(mod2)
}

\keyword{datasets}
