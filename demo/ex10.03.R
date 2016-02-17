str(ex10.03)

smry <- ex10.03 %>% group_by(Variety) %>% 
  summarize(n = length(K),
            df = length(K) - 1,
            Mean = mean(K),
            Variance = var(K),
            c_i = length(K) / var(K))

smry

k <- 3

C <- sum(smry$c_i) 
cXbar <- sum(smry$c_i * smry$Mean)
A <- sum((1 - smry$c_i / C)^2 / smry$df)
Xbar_w <- cXbar / C
Fprime <- (sum(smry$c_i * (smry$Mean - Xbar_w)^2)) / 
  ((k - 1) * (1 + (2 * A * (k - 2))/(k^2 - 1)))

Fprime
## NOTE: the first printing is incorrect (Fprime = 17.5)

## With oneway.test()
oneway.test(K ~ Variety, ex10.03)
