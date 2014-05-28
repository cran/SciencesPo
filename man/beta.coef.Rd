\encoding{UTF-8}
\name{beta.coef}
\alias{beta.coef}
\title{Standardized Beta Coefficients
}
\description{Generate standardized beta coefficients from an adjusted model. Standardized coefficients refer to how many standard deviations a dependent variable will change per standard deviation increase in the predictor variable. See details.
}
\usage{
beta.coef(md)
}
\arguments{
  \item{md}{is a linear object model.
  }
}
\details{Standardized beta coefficients are values estimated from unstandardized coefficients, which are only partially adjusted by the quotient of the standard deviation of an independent variable, and the standard deviation of a dependent variable. Essentially, beta coefficients report the relative importance of each independent variables. Then, this standardization is rather useful for multiple regression models, once it may aid on identifying critical IV.
}
\value{ a numeric value of standardized beta coefficient.

}
\references{
Baguley, T. (2009) Standardized or simple effect size: What should be reported?. \emph{British Journal of Psychology,} \bold{100(3),} 603-617.

Gelman, A., & Hill, J. (2006) \emph{Data analysis using regression and multilevel/hierarchical models.} Cambridge University Press.
}
\author{Daniel Marcelino <dmarcelino@live.com>
}


\seealso{ \code{\link{galton}}
}
\examples{
data(galton) #get some data

#fit a linear regression (OLS) model.

(model <- lm(child ~ parent, data = galton) )

#finally, apply standardization to the coefficients.

beta.coef(model)

}

\keyword{ standardization }
\keyword{ models }
