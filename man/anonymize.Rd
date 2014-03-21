\encoding{UTF-8}
\name{anonymize}
\alias{anonymize}
\title{Make Anonymous Data
}
\description{Replaces factor and character variables by a combination of letters and numbers. Numeric columns are also transformed, see details.
}
\usage{
anonymize(x)
}
\arguments{
  \item{x}{A vector or a data frame.}
}

\details{Simply make it impossible recognize the original data while keeping the same structure; quite useful for sending the data for public help lists.}

\value{ An object of the same type as \code{x}.
}

\author{Daniel Marcelino <dmarcelino@live.com>
}

\seealso{\code{\link{soundexBR}}.
}

\examples{

weather <- data.frame(
month = a <- c('J','F','M','A','M','J','J','A','S','O','N','D'),
precip = b <- c(78,62,74,78,76, 83, 91, 93, 93,78, 93, 81), 
max = c <- c(-6, -4, 2, 11, 19, 24,  26,  25, 20, 13, 5, -2),
min = d <- c(-15, -13, -7, 1, 8,  13, 16, 14, 9, 3, -2, -10) 
)

anonymize(weather)

}

\keyword{ anonymize }
\keyword{ randomize }
