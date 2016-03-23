#' plots the estimatations for an object of class int_est
#'
#' plots the estimation trapezoids and parabolas for objects of class int_est
#'
#' @param int_est_object An object of class int_est
#'
#' @return plots the estimation trapezoids and parabolas for objects of class int_est
#'  \item{plot}{the plot of the estimations}
#' @author Scott Solomon
#' @note This function gives a visual display of the simpson and trapezoid rules
#' @examples
#' 
#' test_int_est<-new("int_est.Trapezoid, x_values = c(0:10), y_values = c(0:10), estimate = 50)
#' plot(test_int_est)
#' @rdname plot
#' @aliases plot
#' @export
## setting the plot method for trapezoids
setMethod(f = "plot",
          signature = "int_est.Trapezoid",
          definition = function(x = NULL, y = x, ...){ # writing the definition for the function
            plot(x = NULL,
                 y = NULL,
                 ## making the x and y labels, giving the chart a name
                 xlab = "x",
                 ylab = "y",
                 main = "Trapezoidal approximations of an integral",
                 ## setting the limits of the graph based off of the values
                 xlim = c(min(x@x_values),max(x@x_values)),
                 ylim = c(min(x@y_values),max(x@y_values)))
            ## subestting the object so the values are vectors
            x_values<-x@x_values
            y_values<-x@y_values
            ## finding the number of values
            n<-length(x_values)
            ## this for loop plots all of the trapezoids using line segments
            for (i in 1:n){
              segments(x_values[i], y_values[i], x_values[(i+1)], y_values[(i+1)])
              segments(x_values[i], 0, x_values[(i+1)], 0)
              segments(x_values[i], y_values[i], x_values[i], 0)
              segments(x_values[(i+1)], y_values[(i+1)], x_values[(i+1)], 0)
            }
          })
#' @export
## setting the method for plot for the Simpson subclass
setMethod(f = "plot",
          signature = "int_est.Simpson",
          definition = function(x = NULL, y = x, ...){
            ## pulling out the x and y values as vectors
            x_values<-x@x_values
            y_values<-x@y_values
            n<-length(x_values)
            ## creating a parabola function
            parabola<-function(x){
              y<-(-1)*x^2
              return(y)}
            ## creating an empty plot
            plot(x = NULL,
                 y = NULL,
                 xlab = "x",
                 ylab = "y",
                 main = "Simpson approximations of an integral",
                 xlim = c(min(x@x_values),max(x@x_values)),
                 ylim = c(min(x@y_values),max(x@y_values))
                 )
            ## an attempt at a loop that should plot parabolas based off the function for all of the x values
            for (i in 1:n){
              plot(parabola, from = x_values[i-1], to = x_values[i], add = T)
            }
          }
)