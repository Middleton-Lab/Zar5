# zar5 #

[![Build Status](https://travis-ci.org/kmiddleton/Zar5.png?branch=master)](https://travis-ci.org/kmiddleton/zar5)

Data sets from *Biostatistical Analysis* (5th ed.) by Jerrold H. Zar

# Installation #

You can install the most recent version directly from github using
`install_github()` from the
[devtools package](https://github.com/hadley/devtools).

```R
require(devtools)
install_github("Zar5", "kmiddleton")
```

Note that if you are using Windows, you will first need to install
Rtools. Start at <http://www.murdoch-sutherland.com/Rtools/> and
follow the links to CRAN.

# References #

[Zar, J.H. 2010.][zarref] *Biostatistical Analysis*. 5th
Edition. Pearson Prentice-Hall. Upper Saddle River, NJ. ISBN-10:
0131008463. ISBN-13: 978013100846.

[zarref]:http://www.pearsonhighered.com/educator/product/Biostatistical-Analysis/9780131008465.page

# Demos #

    library(Zar5)
    demo(ex07.03)
    demo(ex08.08)
    demo(ex08.11)
    demo(ex10.01)
    demo(ex10.02)
    demo(ex10.03)
    demo(ex12.01)
    demo(ex13.03)
    demo(ex13.04)
    demo(ex15.01)
    demo(ex16.01)
