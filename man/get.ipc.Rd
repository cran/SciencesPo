\name{get.ipc}
\alias{get.ipc}
\title{Computes the Intra-party Competition Index
}
\description{Intra-party competition is given by: \deqn{ipc = \frac{(2 * N)}{(Magnitude - 1)}}
}
\usage{
get.ipc(n, mag = NULL)
}
\arguments{
  \item{n}{ is a numeric value or a vector containing the number of candidates for a given party nested within districts.}
  \item{mag}{ is the district magnitude quantity or a vector containing a list of district magnitudes.}
}
\details{Normatively, it is necessary two times the number of candidates
  out the district magnitude size to generate electoral
  competitiveness. When it comes to the party level in PR systems, the
  basic \dQuote{objective} measure is to apply the same reasoning to
  identify competitiveness not between parties but also within
  party. Then, the higher the IPC found, the higher the intra-party
  competition for a given party. 
}
\value{Either a numeric value or a vector with the IPC for each observation.
}

\references{\url{http://danielmarcelino.com/SciencePo} 
}

\author{Daniel Marcelino 
}

\examples{

# First example: generate some raw data

data <- data.frame( 
	i=i <- rep(1, len = 100),
	t=t<-sample(c("2008", "2012"), 100, replace=TRUE),
	p=p <- sample(LETTERS[1:3], 100, replace=TRUE),
	j=j <- sample(letters[1:13], 100, replace=TRUE) )

## The intraparty competition index for each party nested within districts over time.

data$tcan = with(data, ave(i, t, p, j, FUN = sum))

get.ipc(data$tcan, mag = 2)

# Second example: generate some aggregate data

data2 <- data.frame( 
	a_i=i <- rep(1:5, c(1, 1, 4, 4, 3)),
	t=t<-sample(c("2008", "2012"), 13, replace=TRUE),
	p=p <- sample(LETTERS[1:3], 13, replace=TRUE),
	j=j <- sample(letters[1:13], 13, replace=FALSE) )

## The intraparty competition index for each party nested within districts over time.

get.ipc(data2$a_i, mag = 1)

}
\keyword{ intraparty competition }
\keyword{ political parties }
