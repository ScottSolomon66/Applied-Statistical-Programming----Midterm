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
                 xlim = c(min(x@x_values),max(x@x_values)),
                 ylim = c(min(x@y_values),max(x@y_values)))
            x_values<-x@x_values
            y_values<-x@y_values
            n<-length(x_values)
            segments(x_values[2], y_values[2], x_values[3], y_values[3])
            segments(x_values[2], 0, x_values[3], 0)
            segments(x_values[2], y_values[2], x_values[2], 0)
            segments(x_values[3], y_values[3], x_values[3], 0)
          })

?segments

plot(test_int_est)

x<-c(0:10)
y<-c(0:10)

test_int_est@x_values

test_int_est<-new("int_est.Trapezoid", x_values = x, y_values = y, estimation = 50)
str(test_int_est)
plot(xlim =)
