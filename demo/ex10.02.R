str(ex10.02)

ddply(ex10.02, .(Tech),
      function(x)c(n = length(x$X),
                   Mean = mean(x$X),
                   Variance = var(x$X)))

fm1 <- aov(X ~ Tech, data = ex10.02)
summary(fm1)

fm2 <- aov(X ~ 1 + Error(Tech), data = ex10.02)
summary(fm2)
