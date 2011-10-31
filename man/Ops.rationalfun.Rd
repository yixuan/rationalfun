\name{Ops.rationalfun}
\alias{Ops.rationalfun}
\title{Operators for rational functions}
\usage{
\method{Ops}{rationalfun}(e1, e2)
}
\arguments{
  \item{e1}{an object of class "rationalfun"}

  \item{e2}{for \code{"^"}, a positive integer; in other
  cases, an object of class "rationalfun"}
}
\value{
  A new object of "rationalfun" class.
}
\description{
  Basic arithmetic operators for rational functions.
}
\examples{
r1 <- rationalfun(c(1, 2), c(1, 2, 1))
r2 <- rationalfun(c(1, 1), c(1, -2, 1))
r1 + r2
r1 * r2
r1^2
}
