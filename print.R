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
#' @rdname print
#' @aliases print
#' @export
setMethod(f = "print",
          signature = "int_est",
          definition = function(x){
            show(x@estimation)
          })
