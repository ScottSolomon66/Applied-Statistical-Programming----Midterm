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
setMethod(f = "plot",
          signature = "int_est.Simpson",
          definition = function(x = NULL, y = x, ...){
            x_values<-x@x_values
            y_values<-x@y_values
            n<-length(x_values)
            parabola<-function(x){
              y<-(-1)*x^2
              return(y)}
            plot_parabola<-function(fun, from, to){
              plot(parabola, from, to, add = T)
            }
            plot(x = NULL,
                 y = NULL,
                 xlab = "x",
                 ylab = "y",
                 main = "Simpson approximations of an integral",
                 xlim = c(min(x@x_values),max(x@x_values)),
                 ylim = c(min(x@y_values),max(x@y_values))
                 )
            for (i in 1:n){
              plot(parabola, from = x_values[i-1], to = x_values[i], add = T)
            }
          }
)



plot(test_int_est4)

x<-c(1:11)
y<-c(1:11)

curve(parabola(x-(x_values[1])), x_values[1], x_values[2])

?line

test_int_est4<-new("int_est.Simpson", x_values = x, y_values = y, estimation = 50)

?segments

?curve

x<-c(1:5)





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
