\name{predict.rationalfun}
\alias{predict.rationalfun}
\title{Evaluate a rational function}
\usage{
\method{predict}{rationalfun}(object, newdata, ...)
}
\arguments{
  \item{object}{an object of class "rationalfun"}

  \item{newdata}{a vector at which evaluation is
  requested.}

  \item{\dots}{not used in this function Both real and
  complex vectors are accepted.}
}
\value{
  A vector of evaluated results.
}
\description{
  Evaluate a rational function at a real or complex vector.
}
\examples{
r <- rationalfun(c(1, 1), c(3, 2, 1))
predict(r, 1:10)
}
\seealso{
  \code{\link[polynom]{predict.polynomial}}
}
\keyword{symbolmath}
