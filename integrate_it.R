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
#' integrate_it(x_values = c(0:10), y_values = c(0:10), start_value = 0, end_value = 10, Rule = "trap")
#' integrate_it(x_values = c(0:10), y_values = c(0:10), start_value = 0, end_value = 10, Rule = "simp")
#' @rdname integrate_it
#' @aliases integrate_it,ANY-method
#' @export
## setting the generic
setGeneric(name = "integrate_it",
           def = function(x_values, y_values, start_value, end_value, Rule){
             ## the function takes all of the arguments needed to calculate the estimate
             standardGeneric("integrate_it")}
)
#' @export
## setting the method that works for both subclasses
setMethod(f = "integrate_it",
          ## defining the method
          definition = function(x_values, y_values, start_value, end_value, Rule){
            ## trapezoid calculation
            if (Rule == "trap"){
              ## using n as the number of values, minus 1
              n<-length(x_values)-1
              ## calculating the h value
              h<-(end_value-start_value)/n
              ## calculating the estimate value
              estimate<-h*(y[1]/2 + sum(y[2:(n)]) + y[n+1]/2)
              ## making the estimate value into an object of class trapezoid
              trap_estimate<-new("int_est.Trapezoid", x_values = x_values, y_values = y, estimation = estimate)
              ## returning the object
              return(trap_estimate)
            }
            ## simpson calculation
            if (Rule == "simp"){
              ## setting n
              n<-length(x_values)-1
              ## setting h
              h<-(end_value-start_value)/n
              ## creating an equation if n is 2
              if (n == 2){
                estimate<-(h/3)*(y[1]+4*y[2]+y[3])
              } else{
                ## creating the calculation for the rest of n lengths
                ## finding the end values
                ends<-y[1]+y[n]
                ## finding the even values
                evens<-which(y_values %% 2 == 0)
                ## finding the odd values
                odds<-which(y_values %% 2 == 1)
                ## multiplying the numbers that need to be mulitplied by 2
                twos<-2*(sum(y[odds])-(y[1]+y[n])) # take out the ends
                ## multiplying the numbers that need to be mulitplied by 4
                fours<-4*(sum(y[evens]))
                ## summing all these values
                total<-ends+twos+fours
                ## calculating the estimate
                estimate<-(h/3)*(total)
                ## creating an object of class simpson
                simp_estimate<-new("int_est.Simpson", x_values = x_values, y_values = y, estimation = estimate)
                ## returning the object
                return(simp_estimate)
              }
            }
          }
            )