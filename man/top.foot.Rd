\encoding{UTF-8}
\name{top.foot}
\alias{top.foot}
\title{Showing Top Foot Lines
}
\description{Shows the first and last lines of an object simultaneously .
}
\usage{
top.foot(x, head = 4, tail = 4, digits = 2, ellipsis = TRUE)
}
\arguments{
  \item{x}{ An object.
}
  \item{head}{
  	A numeric value for lines to show.
  }
  \item{tail}{
A numeric value for lines to show.
}
  \item{digits}{
  	A numeric value for digits to print.
}
  \item{ellipsis}{
  A logical value. If TRUE, ellipsis will be printed between the first and last lines.
}
}
\value{An object of the same type.
}

\author{
Daniel Marcelino <dmarcelino@live.com>
}

\seealso{
\code{\link{detail}}, \code{\link{head}}, \code{\link{tail}}
}
\examples{
data(galton)
top.foot(galton)
}
\keyword{ describe }
