str(ex15.01)

str(ex15.01)

ex15.01 %>% 
  group_by(Drug, Source) %>% 
  tally()

fit1 <- lm(Chol ~ Drug + Drug/Source, data = ex15.01)
summary(fit1)
anova(fit1)

aovfit2 <- aov(Chol ~ Drug + Source %in% Drug, data = ex15.01)
summary(aovfit2)

# Bayesian model using rethinking::map2stan()

# Generate model matrix for nested design.
MM <- model.matrix(Chol ~ Drug + Source %in% Drug - 1, data = ex15.01)
colnames(MM) <- str_replace_all(colnames(MM), ":", "_")

D <- cbind(ex15.01, as.matrix(MM))

fm <- rethinking::map2stan(
  alist(
    Chol ~ dnorm(mu, sigma),
    mu <- 
      aD1 * Drug1 +
      aD2 * Drug2 +
      aD3 * Drug3,
    c(aD1, aD2, aD3) ~ dnorm(100, 20),
    sigma ~ dcauchy(0, 3)
  ),
  data = D,
  chains = 4,
  iter = 2e4
)

post <- extract.samples(fm)
D1 <- post$aD1
D2 <- post$aD2
D3 <- post$aD3

tibble(D1, D2, D3) %>% 
  gather() %>% 
  ggplot(aes(value, color = key)) +
  geom_line(stat = "density")

D13 <- D1 - D3
D23 <- D2 - D3
D12 <- D1 - D2

HPDI(D13)
HPDI(D12)
HPDI(D23)

fm_nest <- rethinking::map2stan(
  alist(
    Chol ~ dnorm(mu, sigma),
    mu <- 
      aD1 * Drug1 +
      aD2 * Drug2 +
      aD3 * Drug3 +
      aD1SB * Drug1_SourceB +
      aD2SB * Drug2_SourceB +
      aD3SB * Drug3_SourceB +
      aD1SD * Drug1_SourceD +
      aD2SD * Drug2_SourceD +
      aD3SD * Drug3_SourceD +
      aD1SL * Drug1_SourceL +
      aD2SL * Drug2_SourceL +
      aD3SL * Drug3_SourceL +
      aD1SQ * Drug1_SourceQ +
      aD2SQ * Drug2_SourceQ +
      aD3SQ * Drug3_SourceQ +
      aD1SS * Drug1_SourceS +
      aD2SS * Drug2_SourceS +
      aD3SS * Drug3_SourceS,
    c(aD1, aD2, aD3) ~ dnorm(100, 20),
    c(aD1SB, aD2SB, aD3SB,
      aD1SD, aD2SD, aD3SD,
      aD1SL, aD2SL, aD3SL,
      aD1SQ, aD2SQ, aD3SQ,
      aD1SS, aD2SS, aD3SS) ~ dnorm(0, 2),
    sigma ~ dcauchy(0, 3)
  ),
  data = D,
  chains = 4,
  iter = 2e4
)

post <- extract.samples(fm_nest)
D1 <- post$aD1
D2 <- post$aD2
D3 <- post$aD3

tibble(D1, D2, D3) %>% 
  gather() %>% 
  ggplot(aes(value, color = key)) +
  geom_line(stat = "density")

compare(fm, fm_nest)

D13 <- D1 - D3
D23 <- D2 - D3
D12 <- D1 - D2

HPDI(D13)
HPDI(D12)
HPDI(D23)
