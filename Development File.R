#### Midterm ####
#### Scott Solomon ####

#### Development File ####

library(devtools)
library(roxygen2)

getwd()
setwd("~/Documents/Git/Applied-Statistical-Programming----Midterm/")

## create the package skeleton

## type this code once to create the package
## package.skeleton(name = "integrate_it", code_files = c("integrate_it-Package.R", "int_est.R",
##                                                         "integrate_it.R", "print.R", "plot.R"))

## setting the package
current_code<-as.package("integrate_it")

## loading the package
load_all(current_code)

## writing the help files
document(current_code)

## running checks
check(current_code)

