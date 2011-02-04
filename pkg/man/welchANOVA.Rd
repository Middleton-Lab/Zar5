\name{welchANOVA}
\alias{welchANOVA}
\title{ANOVA using Welch's Correction}
\usage{welchANOVA(y, A)
}
\description{Welch's Test for an ANOVA experimental design with non-equal variances.}
\details{Welch's Test for an ANOVA experimental design with non-equal variances.}
\value{An object of class \code{welchANOVA} containing:
\describe{
\item{dat}{The original data in \code{data.frame} format}
\item{Fprime}{Modified F statistic for the test}
\item{df1}{Numerator degrees of freedom}
\item{df2}{Denominator degrees of freedom}
\item{P}{P-value for the test}
}}
\author{Kevin Middleton (\email{kmm@csusb.edu})}
\references{Welch, B.L. 1951. On the comparison of several mean values: an alternative approach.
\emph{Biometrika} 38: 330-336.

Zar, J.H. 2010. \emph{Biostatistical Analysis (5th Edition)}. Pearson
Prentice-Hall. Upper Saddle River, NJ. ISBN-10: 0131008463. ISBN-13:
978013100846.
\url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}}
\arguments{\item{y}{A vector of the response variable}
\item{A}{A vector of the categorical predictor variable}
}
\examples{K <- c(27.9, 27.0, 26.0, 26.5, 27.0, 27.5, 24.2, 24.7, 25.6, 26.0, 27.4,
26.1, 29.1, 27.7, 29.9, 30.7, 28.8, 31.1)
Variety <- factor(rep(c("G", "A", "L"), each  = 6))

welchANOVA(K, Variety)}

