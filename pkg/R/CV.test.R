# Test for differences between coefficients of variation.
# Following Zar (2010) pp. 159-162
# Written by Kevin Middleton (kmm@csusb.edu)

CV.test <- function(x1, x2, test = "F"){
  n.x1 <- length(x1)
  df.x1 <- n.x1 - 1
  mean.x1 <- mean(x1, na.rm = TRUE)
  s.x1 <- sd(x1, na.rm = TRUE)
  V.x1 <- s.x1 / mean.x1            # Coefficient of variation

  n.x2 <- length(x2)
  df.x2 <- n.x2 - 1
  mean.x2 <- mean(x2, na.rm = TRUE)
  s.x2 <- sd(x2, na.rm = TRUE)
  V.x2 <- s.x2 / mean.x2

  # Variance-ratio test
  if (test == "F"){
    log.x1 <- log(x1)
    log.x2 <- log(x2)
    s2.x1 <- var(log.x1, na.rm = TRUE)
    s2.x2 <- var(log.x2, na.rm = TRUE)
    test.stat <- s2.x1 / s2.x2
    p <- 2 * pf(test.stat, df1 = df.x1, df2 = df.x2, lower.tail = FALSE)
  }

  # Z test
  if (test == "Z"){
    # Pooled coefficient of variation
    V.p <- (df.x1 * V.x1 + df.x2 * V.x2) / (df.x1 + df.x2)
    V.p2 <- V.p^2
    test.stat <- (V.x1 - V.x2) / sqrt((V.p2 / df.x1 + V.p2 / df.x2) * 
      (0.5 + V.p2))
    p <- 2 * pnorm(abs(test.stat), lower.tail = FALSE)
  }

  zz <- list(CV1 = V.x1, CV2 = V.x2, test = test, test.stat = test.stat,
    p = p)
  class(zz) <- "CV.test"
  zz
}

print.CV.test <- function(x, ...){
  cat("\nTest of Difference Between Coefficients of Variation\n\n")
  
  cat("Coefficients of Variation:\n")
  cat("\t x1\t\t\t x2\n")
  cat("\t", x$CV1, "\t", x$CV2, "\n\n")

  if (x$test =="F"){
    cat("Variance-ratio test\n")
    cat("\tF =", x$test.stat, "\tP =", x$p, "\n\n")
    cat("Note: data were log transformed prior to test.\n")
    cat("\tCoefficients of variation are reported\n")
    cat("\tin the original units.\n")

  } else {
    cat("Z test\n")
    cat("\tZ =", x$test.stat, "\tP =", x$p)
  }
}
