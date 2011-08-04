str(ex10.02)

mod1 <- aov(X ~ Tech, data = ex10.02)
summary(mod1)

mod2 <- aov(X ~ 1 + Error(Tech), data = ex10.02)
summary(mod2)
