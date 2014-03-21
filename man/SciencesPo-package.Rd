\encoding{UTF-8}
\name{SciencesPo-package}
\alias{SciencesPo}
\docType{package}
\title{Tools for analyzing political behaviour data	
}
\description{SciencesPo is a facility package for the political science crowd. It provides well-founded functions for analyzing random and nonrandom data. Future updates will focus on innovative techniques published in relevant journals of the field.
}

\details{
\tabular{ll}{
Package: \tab SciencesPo\cr
Type: \tab Package\cr
Version: \tab 0.03.21 \cr
Date: \tab 2014-03-21\cr
License: \tab LGPL (>= 2.0, < 3)\cr }

}
\author{Daniel Marcelino <dmarcelino@live.com>
}
\references{
Marcelino, Daniel (2010). \emph{Sobre dinheiro e eleições: um estudo dos gastos de campanha para o Congresso Nacional em 2002 e 2006.}

Marcelino, Daniel (2013). \emph{SciencesPo: A Tool Set for Analyzing Political Behaviour Data}. Available at SSRN: \url{http://dx.doi.org/10.2139/ssrn.2320547}
}

\keyword{ descriptive stats }
\keyword{ experiments }
\keyword{ electoral systems }


\seealso{ \code{\link{detail}}, \code{\link{fptp2av}}, \code{\link{dummy}}, \code{\link{psum}}, \code{\link{shift}}, \code{\link{soundexBR}}, \code{\link{beta.coef}}, \code{\link{rprob}},  \code{\link{get.ci}}
}
\examples{
# Loading some data 
data(montreal)

detail(montreal) 

anonymize(montreal)

rprob(nerlove63)

rstack(rprob(nerlove63))

lsq(4, 3, seed = 123)

get.ci(sample = 800, n = 1, mu = .29)

}
