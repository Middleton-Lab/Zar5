\name{CV.test}
\alias{CV.test}
\alias{print.CV.test}
\title{Coefficient of Variation Test}
\usage{
  CV.test(x1, x2, test = "F")
}
\arguments{
  \item{x1}{a numeric vector}

  \item{x2}{a numeric vector}

  \item{test}{the type of test to perform, "F" for a
  variance-ratio test or "Z" for a \emph{Z} test.}
}
\value{
  \item{CV1, CV2 }{Coefficients of variation for \code{x1}
  and \code{x2}. If \code{test = "F"}, the coefficients of
  variation are reported in the original
  (non-log-transformed) units.} \item{test}{The type of
  test performed, "F" or "Z"} \item{test.stat}{The test
  statistic for \code{test}} \item{p}{P-value for the test
  statistic}
}
\description{
  Coefficient of Variation Test
}
\details{
  \code{CV.test} tests for the difference in coefficients
  of variations for two variables (\code{x1} and
  \code{x2}), using either a variance ratio (\emph{F}) test
  (default) or a \emph{Z} test.

  The variance-ratio test was described by Lewontin (1966),
  but apparently dates back to Wright (1952) and Bader and
  Lehman (1965). This test involves a ratio of
  log-transformed variances, which follows an
  \emph{F}-distribution with \eqn{n_{1}-1}{n1-1} and
  \eqn{n_{2}-1}{n2-1} degrees of freedom.

  Miller (1991) describes a \emph{Z} test that does not
  involve a log-transformation, provided that the data are
  positive and normally distributed. The \emph{Z} test
  performs best if the coefficients of variation are less
  than 0.33.
}
\examples{
Weight <- ex08.08$Weight
Height <- ex08.08$Height
CV.test(Weight, Height, test = "F")
CV.test(Weight, Height, test = "Z")
}
\author{
  Kevin Middleton (\email{kmm@csusb.edu})
}
\references{
  Bader, R.S. and W.H. Lehman. 1965. Phenotypic and
  genotypic variation in odontometric traits of the house
  mouse. \emph{American Midlands Naturalist} 74: 28-38.

  Lewontin, R.C. 1966. On the measurement of relative
  variability.  \emph{Systematic Zoology} 15: 141-142.
  \url{http://www.jstor.org/stable/2411632}

  Miller, G.E. 1991. Asymptotic test statistics for
  coefficients of variation.  \emph{Communications in
  Statistics-Theory and Methods} 20: 2251-2262.

  Wright, S. 1952. The genetics of quantitative
  variability. \emph{In:} Reeve, E.C.R. and C. Waddington
  (eds.). \emph{Quantitative Inheritance}. pp.  5-41.
  H.M.S.O., London.

  Zar, J.H. 2010. \emph{Biostatistical Analysis}. 5th
  Edition. Pearson Prentice-Hall. Upper Saddle River, NJ.
  ISBN-10: 0131008463. ISBN-13: 978013100846.
  \url{http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page}
}
\keyword{univar}

