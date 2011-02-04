str(ex10.03)

ddply(ex10.03, .(Variety),
      function(x)c(n = length(x$K),
                   df = length(x$K) - 1,
                   Mean = mean(x$K),
                   Variance = var(x$K),
                   c_i = length(x$K) / var(x$K)))

oneway.test(K ~ Variety, ex10.03)
