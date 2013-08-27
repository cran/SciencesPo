\name{cv}
\alias{cv}
\title{Computes Pearson's coefficient of variation 
}
\description{This functions computes the absolute coefficient of variation as
  proposed by Pearson: standard deviation divided by the
  mean. Essentially, cv reflects a normalized measure of dispersion of a
  probability distribution. Distributions with cv < 1 are considered
  low-variance, while those with cv > 1 high-variance.
}
\usage{
cv(x)
}
\arguments{
  \item{x}{ is a numeric vector.
}
}
\details{ sd(x)/mean(x) = cv, which is the inverse of signal-to-noise ratio.
}
\value{Will return the computation of the variation.
}

\author{Daniel Marcelino 
}
\examples{
v <- rnorm(10) 
cv(v)
}

\keyword{variation}
\keyword{ Pearson }
\keyword{ descriptive stats }
