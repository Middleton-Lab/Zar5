data(ex07.03)
x <- ex07.03
mu <- 0

(n <- length(x))
(x.bar <- mean(x))
(s2.x <- var(x))
(s.x <- sqrt(s2.x / n))

(t <- (x.bar - mu) / s.x)

df <- n - 1

1 - pt(t, df, lower = FALSE)

# With t.test()
t.test(x, mu = 0, alternative = "less")
