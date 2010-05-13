\name{ex13.3}
\alias{ex13.3}

\docType{data}

\title{
Zar Data Set: ex13.3
}

\description{
Zar Data Set: ex13.3
}

\usage{data(ex13.3)}
\format{
  A data frame with 5 observations on the following 4 variables.
  \describe{
    \item{\code{Group.1}}{a numeric vector}
    \item{\code{Group.2}}{a numeric vector}
    \item{\code{Group.3}}{a numeric vector}
    \item{\code{Group.4}}{a numeric vector}
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
data(ex13.3)
str(ex13.3)

mean(ex13.3)
apply(ex13.3, 2, var)

x <- sqrt(ex13.3 + 0.5)
x
mean(x)
apply(x, 2, var)
apply(x, 2, FUN = function(x) sd(x)/sqrt(length(x)))

mean(x)^2 - 0.5
}

\keyword{datasets}
