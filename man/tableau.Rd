\name{tableau}
\alias{tableau}
\title{Proportion Table for Univariate Analysis
}
\description{Produces a latex-like table of the variable proportions.
}
\usage{
tableau(var, title=NULL)
}
\arguments{
  \item{var}{is the vector or the object to be computed proportions.}
  \item{title}{A character vector as title.}
}

\value{ A data frame object.
}

\references{\url{http://danielmarcelino.com/SciencePo}
}

\author{Daniel Marcelino
}
\examples{

 x <- rep(1:5, 100)

cap <- "My Table of Proportions"

tableau(x, title = cap)
}

\keyword{ tables }
\keyword{ proportions }
\keyword{ descriptive stats }