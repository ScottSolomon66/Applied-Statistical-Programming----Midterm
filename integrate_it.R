#' estimating integrals
#'
#' estimating integrals using the trapezoid and simpson method
#'
#' @param x_values A numeric vector
#' @param y_values A numeric vector with the same dimensionality as \code{x_values}.
#' @param start_value A numeric object
#' @param end_value A numeric object
#' @param Rule A character object that is either "trap" or "simp"
#'
#' @return An object of class int_est.Simpson or int_est.Trapezoid containing
#'  \item{x_values}{the inputed x values}
#'  \item{y_values}{the inputed y values} 
#'  \item{estimation}{the result of the calculation}
#' @author Scott Solomon
#' @note This should help calculus 2 students with their WebWork
#' @examples
#' 
#' @rdname integrate_it
#' @aliases integrate_it,ANY-method
#' @export
setGeneric(name = "integrate_it",
           def = function(x_values, y_values, start_value, end_value, Rule){
             standardGeneric("integrate_it")}
)
#' @export
setMethod(name = "integrate_it",
          definition = function(x_values, y_values, start_value, end_value, Rule){
            if (Rule == "trap"){
              
            }
          }
            )


x<-c(1:10)
y<-c(1:10)

trap_int<-function(x, y, c, d){
  n<-length(x)
  in_range<-which(x >= c & x <= d)
  return(in_range)
  a<-2*(y[1]+y[3]+y[5]+y[7]+y[9])
  b<-(y[2]+y[4]+y[6]+y[8]+y[10])
  h<-(d-c)/n
  estimate<-h*(a+b)
  return(estimate)
}

trap_int(x = c(1:10), y = c(1:10), c = 2, d = 4)

which(x > 2)

