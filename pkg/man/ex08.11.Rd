\name{ex08.11}
\alias{ex08.11}

\docType{data}

\title{
Zar Data Set: ex08.11
}

\description{
Zar Data Set: ex08.11
}

\usage{data(ex08.11)}

\format{
  The format is:
List of 2
\describe{
  \item{$Males}{: num [1:7] 193 188 185 183 180 175 170}
  \item{$Females}{: num [1:5] 178 173 168 165 163}
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
data(ex08.11)
str(ex08.11)

wilcox.test(ex08.11$Males, ex08.11$Females)
}

\keyword{datasets}
