\name{as.character.rationalfun}
\alias{as.character.rationalfun}
\title{Convert object to character}
\usage{
\method{as.character}{rationalfun}(x, ...)
}
\arguments{
  \item{x}{an object of class "rationalfun"}

  \item{\dots}{not used in this function}
}
\value{
  A character string representing the rational function.
}
\description{
  This function converts an object of class "rationalfun"
  to a character string.
}
\examples{
r <- rationalfun(c(1, 1), c(3, 2, 1))
as.character(r)
}
\seealso{
  \code{\link[polynom]{as.character.polynomial}}
}
\keyword{symbolmath}
