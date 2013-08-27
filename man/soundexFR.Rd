\encoding{latin1}
\name{soundexFR}
\alias{soundexFR}
\title{French Soundex Encoding
}
\description{SoundexFR function returns a Census-like soundex code for a string given the Francophone sound system. This function was firstly outlined to work with the \code{RecordLinkage} package. Nonetheless, the soundex codes can be helpful in many other settings. See details bellow.
}
\usage{
soundexFR(term)
}
\arguments{
  \item{term}{is the vector with character strings.
}
}

\value{ A character vector or matrix with the same dimensions as \code{term}.
}
\references{
Borg, Andreas and Murat Sariyar. (2012) \emph{RecordLinkage: Record Linkage in R,} R package version 0.4-1,  \url{http://CRAN.R-project.org/package=RecordLinkage}.
}
\author{Daniel Marcelino
}
\note{This function is an adaptation of the US census soundex version. See in \url{http://www.archives.gov/research/census/soundex.html}
}

\seealso{\code{\link{soundexBR}},\code{\link{soundexES}}.
}

\examples{

soundexFR(x <- c('Jean Charest', 'John Charest',
	'James Charest', 'John James Charest'))

}

\keyword{ soundex }
\keyword{ French }
\keyword{ RecordLinkage  }
