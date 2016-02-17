str(ex10.02)

ex10.02 %>% group_by(Tech) %>% 
  summarize(n = length(X),
            Mean = mean(X),
            Variance = var(X))

fm1 <- aov(X ~ Tech, data = ex10.02)
summary(fm1)

fm2 <- aov(X ~ 1 + Error(Tech), data = ex10.02)
summary(fm2)
