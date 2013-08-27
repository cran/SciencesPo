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
\details{Standardized beta coefficients--also known as beta coefficients--are quantities estimated from unstandardized coefficients, which are partially adjusted by the quotient of the standard deviation of an independent variable, and the standard deviation of a dependent variable. Basically, beta coefficients report the relative importance of each independent variables. The standardization is typically done after running a multiple regression model, since it aids the researcher to identify which independent variables have the greater effect. Therefore, the standardization procedure is specially useful when variables are measured in different units.
}
\value{ a numeric value of standardized beta coefficient.

}
\references{
Baguley, T. (2009) Standardized or simple effect size: What should be reported?. \emph{British Journal of Psychology,} \bold{100(3),} 603-617.

Dallal, J. Which Predictors Are More Important? \url{http://www.jerrydallal.com/LHSP/importnt.htm}

Gelman, A., & Hill, J. (2006) \emph{Data analysis using regression and multilevel/hierarchical models.} Cambridge University Press.
}
\author{Daniel Marcelino
}
\note{To be fair, there are pros and cons for using standardized beta coefficients, see for example, positive arguments in Gelman's book and counterarguments in Dallal's page.
}


\seealso{ \code{\link{galton}}
}
\examples{
data(galton) #get some data

#fit a linear regression (OLS) model.

(model <- lm(child ~ parent, data = galton) )

#finally, apply the standardization onto model's coefficients.

beta.coef(model)

}

\keyword{ beta coefficients }
\keyword{standardization }
