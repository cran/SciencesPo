% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Palettes.R
\name{party_pal}
\alias{party_pal}
\title{Political Parties Color Palette (Discrete) and Scales}
\usage{
party_pal(palette = "BRA", plot = FALSE, hex = FALSE)
}
\arguments{
\item{palette}{the palette name, a character string.}

\item{plot}{logical, if \code{TRUE} a plot is returned.}

\item{hex}{logical, if \code{FALSE}, the associated color name (label) is returned.}
}
\description{
An N-color discrete palette for political parties.
}
\examples{
library(scales)

# Brazil
show_col(party_pal("BRA")(20))

# Argentine
show_col(party_pal("ARG")(12))

# US
show_col(party_pal("USA")(6))

# Canada
show_col(party_pal("CAN")(10))

party_pal("CAN", plot=TRUE, hex=FALSE)

}
\seealso{
Other color party: \code{\link{scale_color_party}}
}
\keyword{ggplot2}

