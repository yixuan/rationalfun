\name{simplify}
\alias{simplify}
\title{Simplify a rational function}
\usage{
simplify(x, ...)
}
\arguments{
  \item{x}{an object of class "rationalfun"}

  \item{\dots}{currently not used in this function}
}
\value{
  A new object of class "rationalfun"representing the
  simplified rational function.
}
\description{
  Simplify a rational function by dropping terms whose
  coefficients are close to zero, and then reducing it to
  an irreducible form.
}
\examples{
# (x + 1) / (x^2 + 2 * x + 1) ==> 1 / (x + 1)
r <- rationalfun(c(1, 1), c(1, 2, 1))
simplify(r)
}
\keyword{symbolmath}
