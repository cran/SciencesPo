\name{inyears}
\alias{inyears}

\title{Time spanned in years
}
\description{Returns the time span between two dates. 
}
\usage{
inyears(earlier, later)
}

\arguments{
  \item{earlier}{A data or a vector with the precedent dates.
}
  \item{later}{A data or a vector with the posterior dates.
}
}

\value{Will return the computation between the dates as entered. 
}

\author{Daniel Marcelino	
}
\seealso{\code{\link{shift}}
}
\examples{
earlier <- as.Date("2006-08-24")
later <- as.Date("2013-08-23")
inyears(earlier, later)
}

\keyword{time computing}
\keyword{time difference}
