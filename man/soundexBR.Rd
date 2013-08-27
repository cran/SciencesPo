\encoding{latin1}
\name{soundexBR}
\alias{soundexBR}
\title{Soundex Encoding For Portuguese BR
}
\description{SoundexBR function returns a Census-like soundex code for a string given the Brazilian Portuguese sound system. This function was firstly outlined to work with the \code{RecordLinkage} package. Nonetheless, the soundex codes can be helpful in many other settings. See details bellow.
}
\usage{
soundexBR(term)
}
\arguments{
  \item{term}{a list, a vector or a data frame with character strings.
}
}
\details{The soundex assign a code for one's surname (last name) based on the way the surname sounds rather than the way it is spelled. For instance, surnames that sound the same, but are spelled differently, like \bold{SOUZA} and \bold{SOUSA}, will have the same code. Briefly, the soundex coding system was developed so that you can find a surname even though it may have been recorded under various spellings. The soundex code consists of 4 digits long: a letter and three numbers, such as \dQuote{0-000} <capital letter><digit><digit><digit>. The integers are assigned to the remaining letters of the last name.

}
\value{A character vector or matrix with the same dimensions as \code{term}.
}
\references{
Borg, Andreas and Murat Sariyar. (2012) \emph{RecordLinkage: Record Linkage in R,} R package version 0.4-1,  \url{http://CRAN.R-project.org/package=RecordLinkage}.

Camargo Jr. and Coeli CM (2000) Reclink: aplicativo para o relacionamento de bases de dados, implementando o método probabilistic record linkage. \emph{Cad. Saude Publica,} \bold{16(2),} Rio de Janeiro.

Daniel Marcelino (2010) \emph{Sobre dinheiro e eleicoes: um estudo dos gastos de campanha para o Congresso Nacional em 2002 e 2006.}
  
}
\author{Daniel Marcelino
}
\note{This function is an adaptation of the US census soundex version. See in \url{http://www.archives.gov/research/census/soundex.html}

The genealogist Dick Eastman maintain a soundex calcualtor in his website at \url{http://www.eogn.com/soundex/}.
}

\seealso{\code{\link{soundexES}}, \code{\link{soundexFR}}.
}
\examples{
# last name with Z
first <- 'João'
last <- 'Souza'
middle <-'Santos'
soundexBR(c(first, middle, last))

# with S, instead of Z
first <- 'João'
last <- 'Sousa'
soundexBR(c(first, last))

# Miscelania
c('João Souza', 'Joao Sousa', 'Joao dos Santos Souza',
'John Souza') -> names

soundexBR(names)

names <- c('Ana Karolina Kuhnen',
'Ana Carolina Kuhnen', 'Ana Karolina',
'Dilma Vana Rousseff', 'Dilma Rousef')
  
soundexBR(names)

# Example with RecordLinkage
#Some data:
mydata1 <- data.frame(
fname <- c('Ricardo','Maria','Tereza','Pedro','José', 'Germano'),
lname <- c('Cunha','Andrade','Silva','Soares','Silva','Lima'),
age <- c(67,89,78,65,68,67),
birth <- c(1945,1923,1934,1947,1944,1945),
date <- c(20120907,20120703,20120301,20120805,20121004,20121209) )


mydata2 <- data.frame(
fname <- c('Maria','Lúcia','Paulo','Marcos', 'Ricardo', 'Germanio'),
lname <- c('Andrade','Silva','Soares','Pereira','Cunha','Lima'),
age <- c(67,88,78,60,68,80),
birth <- c(1945,1924,1934,1952,1944,1932),
date <- c(20121208,20121103,20120302,20120105,20121004,20121209) )

# Must call RecordLinkage package

\dontrun{pairs <- compare.linkage(mydata1, mydata2,
blockfld = list(c(1,2,4),c(1,2)),
phonetic <- c(1,2), phonfun = soundexBR, strcmp = FALSE,
strcmpfun <- jarowinkler, exclude=FALSE,identity1 = NA,
identity2 = NA, n_match <- NA, n_non_match = NA)
      
print(pairs)

editMatch(pairs)

# To access information in the object:  
weights <- epiWeights(pairs, e = 0.01, f = pairs$frequencies)
hist(weights$Wdata, plot = FALSE) # Plot TRUE
getPairs(pairs, max.weight = Inf, min.weight = -Inf)
	}
}

\keyword{ soundex }
\keyword{ Portuguese }
\keyword{ RecordLinkage  }

