\encoding{UTF-8}
\name{dummy}
\alias{dummy}
\title{Generate Dummy Variables

}
\description{Provides an alternative to generate dummy variables.

}
\usage{
dummy(x, data = NULL, drop = TRUE)
}
\arguments{
  \item{x}{A vector or variable to produce dummies.
}
  \item{data}{A data object as a data frame.
}
  \item{drop}{A logical value. If TRUE, unused levels will be omitted
}
}

\value{A matrix object

}
\references{Marcelino, Daniel (2010) \emph{Sobre dinheiro e eleições: um estudo dos gastos de campanha para o Congresso Nacional em 2002 e 2006.
		}
}
\author{
Daniel Marcelino <dmarcelino@live.com>
}

\examples{
data(ltaylor96)
dummy(ltaylor96$year)
}
\keyword{ attributes }
\keyword{ models }
