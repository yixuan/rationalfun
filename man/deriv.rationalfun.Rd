\name{deriv.rationalfun}
\alias{deriv.rationalfun}
\title{Differentiate a rational function}
\usage{
\method{deriv}{rationalfun}(expr, ...)
}
\arguments{
  \item{expr}{an object of class "rationalfun"}

  \item{\dots}{not used in this function}
}
\value{
  An object of class "rationalfun" representing the
  derivative of the original rational function.
}
\description{
  Calculate the derivative of a rational function. The
  returned value result is still an object of class
  "rationalfun".
}
\examples{
# (x + 1) / (x^2 + x + 1)
r <- rationalfun(c(1, 1), c(1, 1, 1))
deriv(r)
}
\seealso{
  \code{\link[polynom]{deriv.polynomial}},
  \code{\link[stats]{deriv}}
}
\keyword{symbolmath}
