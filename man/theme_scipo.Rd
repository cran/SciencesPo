% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Themes.R
\name{theme_scipo}
\alias{theme_scipo}
\title{The SciPo Theme}
\usage{
theme_scipo(base_family = "", base_size = 11,
  strip_text_family = base_family, strip_text_size = 12,
  title_family = "", title_size = 18, title_margin = 10,
  margins = margin(10, 10, 10, 10), subtitle_family = "",
  subtitle_size = 12, subtitle_margin = 15, caption_family = "",
  caption_size = 9, caption_margin = 10,
  axis_title_family = subtitle_family, axis_title_size = 9,
  axis_title_just = "rt", grid = TRUE, axis = FALSE, ticks = FALSE)
}
\arguments{
\item{base_family}{base font family}

\item{base_size}{base font size}

\item{strip_text_family}{facet label font family}

\item{strip_text_size}{facet label text size}

\item{title_family}{plot tilte family}

\item{title_size}{plot title font size}

\item{title_margin}{plot title margin}

\item{margins}{plot margins}

\item{subtitle_family}{plot subtitle family}

\item{subtitle_size}{plot subtitle size}

\item{subtitle_margin}{plot subtitle margin}

\item{caption_family}{plot caption family}

\item{caption_size}{plot caption size}

\item{caption_margin}{plot caption margin}

\item{axis_title_family}{axis title font family}

\item{axis_title_size}{axis title font size}

\item{axis_title_just}{axis title font justification \code{blmcrt}}

\item{grid}{panel grid (\code{TRUE}, \code{FALSE}, or a combination of
\code{X}, \code{x}, \code{Y}, \code{y})}

\item{axis}{axis \code{TRUE}, \code{FALSE}, [\code{xy}]}

\item{ticks}{ticks}
}
\value{
The theme.
}
\description{
The scpo theme for using with ggplot2 objects.
}
\examples{
# plot with small amount of padding
# qplot(1:10, (1:10)^2, color="green") + theme_scipo()

# Check that it is a complete theme
# attr(theme_scipo(), "complete")

}

