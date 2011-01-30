\name{ex16.01}
\alias{ex16.01}
\alias{ex16.01}
\title{Zar Data Set: ex15...}
\description{Zar Data Set: ex15.01
Zar Data Set: ex15.01}
\docType{data}
\keyword{datasets}
\examples{data(ex16.01)
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
summary.aov(mano2)}

