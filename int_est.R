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
setClass(Class = "int_est",
         representation = representation(
           x_values = "numeric",
           y_values = "numeric",
           estimation = "numeric"
         ),
         prototype = prototype(
           x_values = c(),
           y_values = c(),
           estimation = c()
         ))
#' @export
setMethod("initialize", "int_est",
          function(.Object, ...){
            value = callNextMethod()
            return(value)
          })
#' @export
setClass(Class = "int_est.Trapezoid",
         contains = "int_est",
         representation = representation(
           x_values = "numeric",
           y_values = "numeric",
           estimation = "numeric"
         ),
         prototype = prototype(
           x_values = c(),
           y_values = c(),
           estimation = c()
         ))
#' @export
setValidity("int_est.Trapezoid", method = function(object){
  if (length(object@x_values) != length(object@y_values)){
    return("You must have the same number of x and y values")
  }
})
#' @export
setClass(Class = "int_est.Simpson",
         contains = "int_est",
         representation = representation(
           x_values = "numeric",
           y_values = "numeric",
           estimation = "numeric"
         ),
         prototype = prototype(
           x_values = c(),
           y_values = c(),
           estimation = c()
         ))
#' @export
setValidity("int_est.Trapezoid", method = function(object){
  if (length(object@x_values) != length(object@y_values)){
    return("You must have the same number of x and y values")
  }
  if (length(object@x_values) %% 2 == 0){
    return("You must have an odd number of values")
  }
})