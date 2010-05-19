\name{ex16.01}
\alias{ex16.01}

\docType{data}

\title{
Zar Data Set: ex15.01
}

\description{
Zar Data Set: ex15.01
}

\usage{data(ex16.01)}

\format{
  A data frame with 20 observations on the following 3 variables.
  \describe{
    \item{\code{fat}}{a numeric vector}
    \item{\code{lean}}{a numeric vector}
    \item{\code{month}}{a factor with levels \code{Dec}, \code{Feb}, \code{Jan}, and \code{Mar}}
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
data(ex16.01)
str(ex16.01)

# MANOVA
Y <- cbind(ex16.01$fat, ex16.01$lean)
mano1 <- manova(Y ~ month, data = ex16.01)

# Multivariate
summary(mano1, test = "Wilks")             # Exact
summary(mano1, test = "Pillai")            # Close
summary(mano1, test = "Hotelling-Lawley")  # Close
summary(mano1, test = "Roy")               # Close

# Univariate
summary.aov(mano1)

# MANCOVA
# Add a continuous variable x. Make up random data
x <- rnorm(nrow(ex16.01))
mano2 <- manova(Y ~ month * x, data = ex16.01)

# Multivariate
summary(mano2, test = "Wilks")
summary(mano2, test = "Pillai")
summary(mano2, test = "Hotelling-Lawley")
summary(mano2, test = "Roy")

# Univariate
summary.aov(mano2)
}
\keyword{datasets}
