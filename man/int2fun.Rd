\name{int2fun}
\alias{int2fun}
\title{Convert a call to a function}
\usage{
int2fun(expr)
}
\arguments{
  \item{expr}{a function call, typically returned by
  \code{\link{integral.rationalfun}()}.}
}
\value{
  A function with one argument which could be a real or
  complex vector.
}
\description{
  Convert a function call to a function in R. In this
  package, the function is typically used to convert the
  result of \code{\link{integral.rationalfun}()} to a
  function with one argument.
}
\examples{
x <- rationalfun(c(-6, -1, -8, 15, -1, 8, -9, 2), 
    c(8, 12, 16, 4, 4))
int <- integral(x)
fun <- int2fun(int)
fun(c(0, 1))
}
\seealso{
  \code{\link[polynom]{integral.polynomial}}
}
