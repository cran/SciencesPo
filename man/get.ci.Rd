\name{get.ci}
\alias{get.ci}
\title{Simulation of Confidence Intervals
}
\description{Simulate the effect of sample size and the sampling design.
}
\usage{
get.ci(sample = NULL, n = NULL, mu = 0, sigma = 1, cl = 0.95, type = "mean")
}
\arguments{
  \item{sample}{ is an integer value to simulate the sampling design. }
  \item{n}{the size of the sample}
  \item{mu}{is the proportion mean (0 to 1) of the population distribution.}
  \item{sigma}{is the size of variance}
  \item{cl}{is the value of the confidence level required, usually 0.95 to 0.99.}
  \item{type}{is a character string giving the type for the simulation c(\dQuote{mean}, \dQuote{var}, \dQuote{pi})
  }
}
\value{ A plot with the simulated values for CI.
}
\references{\url{http://danielmarcelino.com/SciencePo}
}
\author{Daniel Marcelino
}

\examples{
get.ci(sample = 1000, n = 1, mu = .29)

get.ci(1000, 1, .29, 2, .90)
}

\keyword{ confidence interval }
\keyword{ simulations }
\keyword{ descriptive stats }