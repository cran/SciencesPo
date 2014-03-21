\encoding{UTF-8}
\name{rescale}
\alias{rescale}
\title{Rescaling as Z-scores and Centering 
}
\description{Provides a rapidly way to generate standard variables. 
}
\usage{
rescale(x, fun = "center")
}
\arguments{
  \item{x}{ A vector to be computed}
  \item{fun}{A function to be applied: `z-score' or `z', the default is `center' or `c'. }
 
}

\value{An object the same class as \code{x}.}

\author{Daniel Marcelino <dmarcelino@live.com>
	}
\examples{
x <- sample(10)

rescale(x)
}
\keyword{ descriptive stats}
\keyword{standardization }

