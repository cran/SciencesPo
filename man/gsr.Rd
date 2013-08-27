\name{gsr}
\alias{gsr}
\title{Global Search and Replace}

\description{The function performs search and replace.
}
\usage{
gsr(file, search, replace)
}
\arguments{
  \item{file}{ is a vector or a data.frame.}
  \item{search}{ is the item to be replaced. }
  \item{replace}{ is the new item or value to be attributed.}
}

\value{An object of the same type as file.
}

\references{ \url{http://danielmarcelino.com/SciencePo} }

\author{Daniel Marcelino
}

\examples{

# First example: generate some raw data

data <- data.frame( 
	i=i <- rep(1, len = 100),
	t=t<-sample(c('2008', '2012'), 100, replace=TRUE),
	p=p <- sample(LETTERS[1:3], 100, replace=TRUE),
	j=j <- sample(letters[1:13], 100, replace=TRUE) )

data$ide <-gsr(data$p, 
	c('A', 'B'), 
	c('Left', 'Centre'))

print(data)

  
}

\keyword{ search and replace }
