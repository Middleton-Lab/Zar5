str(ex12.04)

ex12.04 <- ex12.04 %>%
  mutate(Block = factor(Block),
         Treatment = factor(Treatment))

fm <- lm(Time ~ Treatment + Block, data = ex12.04)
anova(fm)
