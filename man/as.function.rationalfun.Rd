\name{as.function.rationalfun}
\alias{as.function.rationalfun}
\title{Convert object to function}
\usage{
\method{as.function}{rationalfun}(x, ...)
}
\arguments{
  \item{x}{an object of class "rationalfun"}

  \item{\dots}{not used in this function}
}
\value{
  A function with one argument which could be a real or
  complex vector.
}
\description{
  This function converts an object of class "rationalfun"
  to a function.
}
\examples{
r <- rationalfun(c(1, 1), c(3, 2, 1))
r
f <- as.function(r)
f
f(1:10)
f(1:10 + (0+2i))
}
\seealso{
  \code{\link[polynom]{as.function.polynomial}}
}
\keyword{symbolmath}
