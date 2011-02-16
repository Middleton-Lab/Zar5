pkgname <- "Zar5"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('Zar5')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("CV.test")
### * CV.test

flush(stderr()); flush(stdout())

### Name: CV.test
### Title: Coefficient of Variation Test
### Aliases: CV.test CV.test print.CV.test
### Keywords: univar

### ** Examples
Weight <- ex08.08$Weight
Height <- ex08.08$Height
CV.test(Weight, Height, test = "F")
CV.test(Weight, Height, test = "Z")


cleanEx()
nameEx("ex08.08")
### * ex08.08

flush(stderr()); flush(stdout())

### Name: ex08.08
### Title: Zar Data Set: ex08.08
### Aliases: ex08.08 ex08.08
### Keywords: datasets

### ** Examples
demo(ex08.08)


cleanEx()
nameEx("ex08.11")
### * ex08.11

flush(stderr()); flush(stdout())

### Name: ex08.11
### Title: Zar Data Set: ex08.11
### Aliases: ex08.11 ex08.11
### Keywords: datasets

### ** Examples
demo(ex08.11)


cleanEx()
nameEx("ex10.01")
### * ex10.01

flush(stderr()); flush(stdout())

### Name: ex10.01
### Title: Zar Data Set: ex10.01
### Aliases: ex10.01 ex10.01
### Keywords: datasets

### ** Examples
demo(ex10.01)


cleanEx()
nameEx("ex10.02")
### * ex10.02

flush(stderr()); flush(stdout())

### Name: ex10.02
### Title: Zar Data Set: ex10.02
### Aliases: ex10.02 ex10.02
### Keywords: datasets

### ** Examples
demo(ex10.02)


cleanEx()
nameEx("ex10.03")
### * ex10.03

flush(stderr()); flush(stdout())

### Name: ex10.03
### Title: Zar Data Set: ex10.03
### Aliases: ex10.03 ex10.03
### Keywords: datasets

### ** Examples
demo(ex10.03)


cleanEx()
nameEx("ex12.01")
### * ex12.01

flush(stderr()); flush(stdout())

### Name: ex12.01
### Title: Zar Data Set: ex12.01
### Aliases: ex12.01 ex12.01
### Keywords: datasets

### ** Examples
demo(ex12.01)


cleanEx()
nameEx("ex13.03")
### * ex13.03

flush(stderr()); flush(stdout())

### Name: ex13.03
### Title: Zar Data Set: ex13.03
### Aliases: ex13.03 ex13.03
### Keywords: datasets

### ** Examples
demo(ex13.03)


cleanEx()
nameEx("ex13.04")
### * ex13.04

flush(stderr()); flush(stdout())

### Name: ex13.04
### Title: Zar Data Set: ex13.04
### Aliases: ex13.04 ex13.04
### Keywords: datasets

### ** Examples
demo(ex13.04)


cleanEx()
nameEx("ex15.01")
### * ex15.01

flush(stderr()); flush(stdout())

### Name: ex15.01
### Title: Zar Data Set: ex15.01
### Aliases: ex15.01 ex15.01
### Keywords: datasets

### ** Examples
demo(ex15.01)


cleanEx()
nameEx("ex16.01")
### * ex16.01

flush(stderr()); flush(stdout())

### Name: ex16.01
### Title: Zar Data Set: ex16.01
### Aliases: ex16.01 ex16.01
### Keywords: datasets

### ** Examples
demo(ex16.01)


### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
