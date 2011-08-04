str(ex15.01)

aovfit1 <- aov(Chol ~ Drug + Drug/Source, data = ex15.01)
summary(aovfit1)

aovfit2 <- aov(Chol ~ Drug + Source %in% Drug, data = ex15.01)
summary(aovfit2)
