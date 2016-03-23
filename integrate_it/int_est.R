#' An class called int_est, with subclasses trapezoid and simpson
#' 
#' Object of class \code{integrate_it} take information about a function to perform integration estimation functions
#' 
#' 
#' An item of class `int_est' has the following slots:
#' \itemize
#' \item \code{x_values} a vector containing the x values
#' \item \code{y_values} a vector containing the evaluated values (f(x) = y)
#' \item \code{estimation} a numeric object contain the integration estimate
#' 
#' @author Scott Solomon \email{scott.solomon@wustl.edu}
#' @aliases int_est-class initialize,  int_est-method 
#' @rdname int_est
#' @export
## class "int_est"
## this is the class that the subclasses simpson and trapezoid will be under

setClass(Class = "int_est", # naming the class
         ## adding slots to the class
         slots = c(x_values = "numeric", 
         y_values = "numeric",
         estimation = "numeric"),
         ## adding a blank prototype
         prototype = prototype(
           x_values = c(),
           y_values = c(),
           estimation = c()
         ))
#' @export
## setting the initialive method for int_est
setMethod("initialize", "int_est",
          function(.Object, ...){
            value = callNextMethod()
            return(value)
          })
#' @export
## setting the subclass for int_est
## this will be fore trapezoidal estimations
setClass(Class = "int_est.Trapezoid", # naming the class
         contains = "int_est", # the class it's under
         ## adding the slots
         slots = c(x_values = "numeric",
                   y_values = "numeric",
                   estimation = "numeric"),
         prototype = prototype(
           x_values = c(),
           y_values = c(),
           estimation = c()
         ))
#' @export
## setting validity that the x and y values have the same length
setValidity("int_est.Trapezoid", method = function(object){
  ## if the length of the values are different, it throws an error
  if (length(object@x_values) != length(object@y_values)){
    return("You must have the same number of x and y values")
  }
})
#' @export
## repeating the same steps for the simpson approximation class
setClass(Class = "int_est.Simpson",
         contains = "int_est",
         slots = c(x_values = "numeric",
                   y_values = "numeric",
                   estimation = "numeric"),
         prototype = prototype(
           x_values = c(),
           y_values = c(),
           estimation = c()
         ))
#' @export
## in this validity function, it not only checks that the number of values are the same
## but also that the number of observations is odd, which yields an even n
setValidity("int_est.Simpson", method = function(object){
  if (length(object@x_values) != length(object@y_values)){
    return("You must have the same number of x and y values")
  }
  if (length(object@x_values) %% 2 == 0){
    return("You must have an odd number of values")
  }
})