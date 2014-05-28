\encoding{UTF-8}
\name{get.ci}
\alias{get.ci}
\title{Simulates Confidence Intervals
}
\description{Simulates the effect of sample size and the sampling design.
}
\usage{
get.ci(sample=NULL,n=NULL,mu=0,sigma=1,level=0.95,type="mean")
}
\arguments{
  \item{sample}{an integer value to simulate the sampling design. }
  \item{n}{an integer for the sample size.}
  \item{mu}{the proportion \dQuote{mean} of the population distribution: [0:1].}
  \item{sigma}{the size of variance}
  \item{level}{a value for the confidence level required, usually 0.95 to 0.99.}
  \item{type}{a character string for the type of simulation c(\dQuote{mean}, \dQuote{var}, \dQuote{pi})
  }
}
\value{ A plot with the simulated values for CI.
}
\author{Daniel Marcelino <dmarcelino@live.com>
}

\examples{
get.ci(sample = 1000, n = 1, mu = .29)

get.ci(1000, 1, .29, 2, .90)
}

\keyword{ descriptive stats }
\keyword{ simulations }
