\name{rationalfun}
\alias{rationalfun}
\alias{rationalfun.poly}
\alias{rfun}
\alias{rfun.poly}
\title{Construction of rational functions}
\usage{
rationalfun(numer = c(0, 1), denom = c(1, 1, 1))

rfun(numer = c(0, 1), denom = c(1, 1, 1))

rationalfun.poly(numer = polynomial(c(0, 1)), denom = polynomial(c(1, 
    1, 1)))

rfun.poly(numer = polynomial(c(0, 1)), denom = polynomial(c(1, 
    1, 1)))
}
\arguments{
  \item{numer}{in \code{rationalfun()}, the coefficient
  vector of the numerator; in \code{rationalfun.poly()}, an
  object of class "polynom" in \pkg{polynom} package
  representing the numerator}

  \item{denom}{similar to \code{numer}, but for the
  denominator}
}
\value{
  An object of class "rationalfun".
}
\description{
  Construction of rational functions.
}
\details{
  A rational function object could be constructed either by
  calling \code{rationalfun()} or by calling
  \code{rationalfun.poly()}.

  \code{rationalfun()} constructs a rational function from
  the coefficient vectors of the numerator and the
  denominator. For example, consider a rational function
  \eqn{R(x) = P(x) / Q(x)} where \deqn{P(x) = p_1 + p_2 x +
  p_3 x^2 + \dots + p_k x^{k-1}}{P(x) = p[1] + p[2] * x +
  p[3] * x^2 + ... + p[k]* x^(k-1)} and \deqn{Q(x) = q_1 +
  q_2 x + q_3 x^2 + \dots + q_m x^{m-1}}{Q(x) = q[1] + q[2]
  * x + q[3] * x^2 + ... + q[m]* x^(m-1)}, you may call
  \code{rationalfun(p[1:k], q[1:m])} to build the object.

  For \code{rationalfun.poly()}, it receives two objects of
  class "polynomial" from the \pkg{polynom} package,
  representing the polynomials of the numerator and the
  denominator respectively. Use this function if you
  already have objects of "polynomial" class, typically by
  calling \code{\link[polynom]{polynomial}()},
  \code{\link[polynom]{poly.calc}()} or
  \code{\link[polynom]{poly.orth}()}.

  \code{rfun()} and \code{rfun.poly()} are aliases of
  \code{rationalfun()} and \code{rationalfun.poly()} in
  order to type fewer letters.

  The value returned by \code{rationalfun()} and
  \code{rationalfun.poly()} is an object of class
  "rationalfun". You can coerce the object to a function,
  by calling \code{\link{as.function.rationalfun}()}, or to
  a character string, by calling
  \code{\link{as.character.rationalfun}()}.

  Objects of "ratioanlfun" class support basic operators
  including \code{"+"}, \code{"-"}, \code{"*"}, \code{"/"}
  and \code{"^"}. To evaluate a rational function at a
  given vector, use \code{\link{predict.rationalfun}()}. To
  compute the derivative and integral in \strong{explicit}
  form, call \code{\link{deriv.rationalfun}()} and
  \code{\link{integral.rationalfun}()} respectively.
}
\examples{
# (x + 1) / (x^2 + 2 * x + 3)
r1 <- rationalfun(c(1, 1), c(3, 2, 1))
print(r1)
# Construct from objects of 'polynomial' class
if (require(polynom)) {
    p1 <- poly.calc(c(1, 2))
    p2 <- polynomial(rep(1, 5))
    r2 <- rfun.poly(p1, p2)
    print(r2)
}
}
\seealso{
  \code{\link[polynom]{polynomial}},
  \code{\link[polynom]{poly.calc}},
  \code{\link[polynom]{poly.orth}}
}
