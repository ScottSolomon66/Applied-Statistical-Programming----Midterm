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
setMethod(f = "integrate_it",
          definition = function(x_values, y_values, start_value, end_value, Rule){
            if (Rule == "trap"){
              n<-length(x_values)-1
              h<-(end_value-start_value)/n
              estimate<-h*(y[1]/2 + sum(y[2:(n)]) + y[n+1]/2)
              trap_estimate<-new("int_est.Trapezoid", x_values = x_values, y_values = y, estimation = estimate)
              return(trap_estimate)
            }
            if (Rule == "simp"){
              n<-length(x_values)-1
              h<-(end_value-start_value)/n
              if (n == 2){
                estimate<-(h/3)*(y[1]+4*y[2]+y[3])
              } else{
                ends<-y[1]+y[n]
                evens<-which(y_values %% 2 == 0)
                odds<-which(y_values %% 2 == 1)
                twos<-2*(sum(y[odds])-(y[1]+y[n]))
                fours<-4*(sum(y[evens]))
                total<-ends+twos+fours
                estimate<-(h/3)*(total)
                simp_estimate<-new("int_est.Simpson", x_values = x_values, y_values = y, estimation = estimate)
                return(simp_estimate)
              }
            }
          }
            )