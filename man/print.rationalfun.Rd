\name{print.rationalfun}
\alias{print.rationalfun}
\title{Print a rational function}
\usage{
\method{print}{rationalfun}(x, ...)
}
\arguments{
  \item{x}{an object of class "rationalfun"}

  \item{\dots}{not used in this function}
}
\value{
  Invisible, the object itself.
}
\description{
  Print a rational function in a fraction form.
}
\examples{
r <- rationalfun(c(1, 1), c(3, 2, 1))
print(r)
}
\seealso{
  \code{\link[polynom]{print.polynomial}}
}
