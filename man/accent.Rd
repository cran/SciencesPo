\encoding{latin1}
\name{accent}
\alias{accent}

\title{Remove Accent Marks}

\description{Replace lower and upper case accented letters with their counterpart without the diacritics.
}
\usage{
accent(x)
}
\arguments{
  \item{x}{Is a data object. }
}

\value{ An object of the same type as \code{x}.

}
\references{\url{http://danielmarcelino.com/SciencePo} 

}
\author{Daniel Marcelino
}

\seealso{\code{\link{outtags}}
}

\examples{

accent('Não me julgues pela metade se não me conheces por inteiro.')

\dontrun{accent(x)}
}
\keyword{ accent marks }
\keyword{ strings }
\keyword{ diacritics }

