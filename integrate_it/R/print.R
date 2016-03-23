#' prints the estimatation for an object of class int_est
#'
#' prints the estimatation for an object of class int_est.Trapezoid and int_est.Simpson
#'
#' @param int_est_object An object of class int_est
#'
#' @return Prints the estimated value for the int_est object
#'  \item{estimation}{the inputed x values}
#' @author Scott Solomon
#' @note This is a simple print function
#' @examples
#' 
#' test_int_est<-new("int_est.Trapezoid, x_values = c(0:10), y_values = c(0:10), estimate = 50)
#' print(test_int_est)
#' test_int_est2<-new("int_est.Simpson, x_values = c(0:10), y_values = c(0:10), estimate = 50)
#' print(test_int_est)
#' @rdname print
#' @aliases print
#' @export
## setting the method for print
## since i set it for int_est, it works for both the subclasses
setMethod(f = "print", # generic
          signature = "int_est", # adding the signature
          definition = function(x){
            ## just showing the estimate
            show(x@estimation)
          })
