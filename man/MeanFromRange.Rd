% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MeanFromRange.R
\encoding{UTF-8}
\name{MeanFromRange}
\alias{MeanFromRange}
\title{Estimates Mean and Standard Deviation from Median and Range}
\usage{
MeanFromRange(low, med, high, n)
}
\arguments{
\item{low}{The min of the data.}

\item{med}{The median of the data.}

\item{high}{The max of the data}

\item{n}{The size of the sample.}
}
\description{
When conductig a meta-analysis study, it is not always
 possible to recover from reports, the mean and standard deviation
 values, but rather the median and range of values. This function
 provides a method for computing the mean and variance estimates
 from median/range or IQR estimates.
}
\note{
One should use these calculations ONLY if there are strong hints,
 that the overall distribution does not relevantly deviate from normal
 distribution. The question is then, why some papers report median and
 IQR if data are not far from normal distribution.
}
\examples{
# mean=median and SD = IQR/1.35.
# median= 3
# Iqr= 2-3
# median=mean=3
# sd=iqr/1.35 2-3 means 2,5/1.35= sd = 1,85

MeanFromRange(low=5, med=8, high=12, n=10)

}
\author{
Daniel Marcelino, \email{dmarcelino@live.com}
}
\references{
Hozo, Stela P.; et al (2005) Estimating the mean and variance from the median, range, and the size of a sample. \emph{BMC Medical Research Methodology}, 5:13.
}

