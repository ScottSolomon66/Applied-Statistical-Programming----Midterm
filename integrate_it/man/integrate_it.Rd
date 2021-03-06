% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/integrate_it-Package.R, R/integrate_it.R
\docType{package}
\name{integrate_it}
\alias{integrate_it}
\alias{integrate_it,ANY-method}
\alias{integrate_it-package}
\title{integrate_it}
\usage{
integrate_it(x_values, y_values, start_value, end_value, Rule)
}
\arguments{
\item{x_values}{A numeric vector}

\item{y_values}{A numeric vector with the same dimensionality as \code{x_values}.}

\item{start_value}{A numeric object}

\item{end_value}{A numeric object}

\item{Rule}{A character object that is either "trap" or "simp"}
}
\value{
An object of class int_est.Simpson or int_est.Trapezoid containing
 \item{x_values}{the inputed x values}
 \item{y_values}{the inputed y values} 
 \item{estimation}{the result of the calculation}
}
\description{
The integrate_it pack uses the trapezoid and simpson's rule to estimate definite integrals

estimating integrals using the trapezoid and simpson method
}
\note{
This should help calculus 2 students with their WebWork
}
\examples{

integrate_it(x_values = c(0:10), y_values = c(0:10), start_value = 0, end_value = 10, Rule = "trap")
integrate_it(x_values = c(0:10), y_values = c(0:10), start_value = 0, end_value = 10, Rule = "simp")
}
\author{
Scott Solomon: \email{scott.solomon@wustl.edu}

Scott Solomon
}

