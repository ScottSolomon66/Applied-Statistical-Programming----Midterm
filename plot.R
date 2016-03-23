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
#' @rdname plot
#' @aliases plot
#' @export
setMethod(f = "plot",
          signature = "int_est.Trapezoid",
          definition = function(x = NULL, y = x, ...){
            plot(x = NULL,
                 y = NULL,
                 xlab = "x",
                 ylab = "y",
                 main = "Trapezoidal approximations of an integral",
                 xlim = c(min(x@x_values),max(x@x_values)),
                 ylim = c(min(x@y_values),max(x@y_values)))
            x_values<-x@x_values
            y_values<-x@y_values
            n<-length(x_values)
            for (i in 1:n){
              segments(x_values[i], y_values[i], x_values[(i+1)], y_values[(i+1)])
              segments(x_values[i], 0, x_values[(i+1)], 0)
              segments(x_values[i], y_values[i], x_values[i], 0)
              segments(x_values[(i+1)], y_values[(i+1)], x_values[(i+1)], 0)
            }
          })
#' @export
setMethod(f = "plot",
          signature = "int_est.Simpson",
          definition = function(x = NULL, y = x, ...){
            plot(x = NULL,
                 y = NULL,
                 xlab = "x",
                 ylab = "y",
                 main = "Simpson approximations of an integral",
                 xlim = c(min(x@x_values),max(x@x_values)),
                 ylim = c(min(x@y_values),max(x@y_values)))
            x_values<-x@x_values
            y_values<-x@y_values
            n<-length(x_values)}
          )





plot(test_int_est3)

test_int_est3<-new("int_est.Simpson", x_values = a, y_values = b, estimation = 50)

test_int_est2<-new("int_est.Trapezoid", x_values = a, y_values = b, estimation = 50)

a<-c(0:10)
b<-sin(a)

?segments

plot(test_int_est2)

x<-c(0:10)
y<-c(0:10)

test_int_est@x_values

test_int_est<-new("int_est.Trapezoid", x_values = x, y_values = y, estimation = 50)
str(test_int_est)
plot(xlim =)
