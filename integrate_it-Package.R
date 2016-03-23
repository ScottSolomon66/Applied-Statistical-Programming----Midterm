#' integrate_it
#'
#' The integrate_it pack uses the trapezoid and simpson's rule to estimate definite integrals
#' @name integrate_it
#' @docType package
#' @author  Scott Solomon: \email{scott.solomon@@wustl.edu} 
#' @examples 
#' 
#' integrate_it(x_values = c(0:10), y_values = c(0:10), start_value = 0, end_value = 10, Rule = "trap")
#' test_int_est<-new("int_est.Trapezoid, x_values = c(0:10), y_values = c(0:10), estimate = 50)
#' plot(test)int_est
#' @seealso \code{\link{int_est}}, \code{\link{integrate_it}}, \code{\link{print}, \code{\link{plot}}}}
#'
#'
NULL