str(ex13.03)

mean(ex13.03)
apply(ex13.03, 2, var)

x <- sqrt(ex13.03 + 0.5)
x
mean(x)
apply(x, 2, var)
apply(x, 2, FUN = function(x) sd(x)/sqrt(length(x)))

mean(x)^2 - 0.5
