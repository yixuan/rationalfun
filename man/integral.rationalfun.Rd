\name{integral.rationalfun}
\alias{integral.rationalfun}
\title{Integrate a rational function}
\usage{
\method{integral}{rationalfun}(expr, ...)
}
\arguments{
  \item{expr}{an object of class "rationalfun"}

  \item{\dots}{not used in this function}
}
\value{
  A function call representing the explicit form of the
  integral.
}
\description{
  Calculate the integral of a rational function. See
  "Details".
}
\details{
  The returned value is a function call with argument named
  "x". That is, the integral is an expression in R with an
  explicit form, which could be evaluated directly by
  calling \code{\link{eval}()}, or indirectly using the
  \code{\link{int2fun}()} function.

  The algorithm is based on the Hermite-Ostrogradski
  formula which is discussed in the reference. See the
  article for more details.
}
\examples{
# (x + 1) / (x^2 + x + 1)
r <- rationalfun(c(1, 1), c(1, 1, 1))
expr <- integral(r)
# Evaluate the call directly
eval(expr, list(x = 2))
# Use int2fun()
f <- int2fun(expr)
f(2)
}
\references{
  T. N. Subramaniam, and Donald E. G. Malm, How to
  Integrate Rational Functions, \emph{The American
  Mathematical Monthly}, Vol. 99, No.8 (1992), 762-772.
}
\seealso{
  \code{\link[polynom]{integral.polynomial}}
}
\keyword{symbolmath}
