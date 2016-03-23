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


#### tests ####

## lets test some of these functions

## making some dummy numbers
x<-c(0:10)
y<-sin(x)

## creating an object using integrate_it for the trapezoid rule
test_object<-integrate_it(x_values = x, y_values = y, start_value = 0, end_value = 10, Rule = "trap")
test_object
class(test_object)

## creating an object using integrate_it for the simpson rule
test_object2<-integrate_it(x_values = x, y_values = y, start_value = 0, end_value = 10, Rule = "simp")
test_object2
class(test_object2)

## the print functions just throw the estimated values
print(test_object)
print(test_object2)

## testing the plot for trapezoids and simpsons approximations
plot(test_object)
plot(test_object2)

## reading in the help file for int_est
?int_est

## I've learned a lot so farthis semester, considering I had no real coding experience before the class
## Excited to learn more and start working on real packages
