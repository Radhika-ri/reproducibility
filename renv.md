# Introduction

Packages are installed in system library. all of the functions, code are
stored in our computer, which can leads to reproduibility problem.

-why we need this? Packages can change over time.

lock file contains all the packages which will be uploaded into github.
all the packages that we used can be installed by anyone using our
github.

# renv

1.  install r env
2.  renv::init(). this code is used in console and run.
3.  all the packages information will be displayed in console.
4.  it has created a directory, which contains library folder having all
    functions and codes wrt the packages.

source(“renv/activate.R”)

.libPaths() when run in console will shows where the project is pulling
the r packages from.
“/Library/Frameworks/R.framework/Versions/4.5-arm64/Resources/library”
is shows where the packages will be pulled from.

“it basically encodes the same version u are using, that the end user
will use”

# when we want to update the packages

install.packages(“MASS”) any package. go to files, lock file has all the
pacakges.

``` r
library(ggplot2)
```

    ## Warning: package 'ggplot2' was built under R version 4.5.2

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
#library(paletteer)
```

renv::snapshot - like save button it will ask to proceed?- yes to upload
the new packages.

# when third person downloads the zip file from github.

he needs to use restore function to get the packages.

-renv::restore() -do u want to proceed?- yes it is gonna look into ur
computerfirst. if the package does not exist, it will install them.

# Limitations

1.  pandock , its itegrate with r markdown. its a outside package. so
    the person first needs to install pandock to use it.

————-SECOND PART——————————————————–
