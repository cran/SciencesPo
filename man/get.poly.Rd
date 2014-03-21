\encoding{UTF-8}
\name{get.poly}
\alias{get.poly}
\title{Get Polygons from a Shapefile
}
\description{It produces an object with polygons that can be used to overprint values on the plot. 
}
\usage{
get.poly(x)
}
\arguments{
  \item{x}{ is the shapefile object.}
}

\value{A matrix containing the polygon values.
}
\references{\url{www.metodologiapolitica.com.br}
}
\author{Daniel Marcelino <dmarcelino@live.com>
}
\examples{

sids <- maptools::readShapePoly(system.file("shapes/sids.shp",
package="maptools") )

plot(poly <- get.poly(sids))

}

\keyword{ spatial }
