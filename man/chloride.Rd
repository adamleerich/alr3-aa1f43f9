\name{chloride}
\alias{chloride}
\docType{data}
\title{Chloride data}
\description{
Seasonal variation in chloride level in marshes close to a road or distant from the road, in Minnesota.
}
\usage{data(chloride)}
\format{
  A data frame with 32 observations on the following 4 variables.
  \describe{
    \item{Marsh}{March number}
    \item{Type}{a factor with levels \code{Isolated} and \code{Roadside}}
    \item{Month}{Month (4 = May, ... 10 = October)}
    \item{Cl}{Chloride concentration, mg/liter}
  }
}
\source{
Stefanie Miklovic and Susan Galatowitsch
}
\references{Weisberg, S. (2005). \emph{Applied Linnear Regression}, 3rd edition. New York: Wiley, Section 6.5.}
\examples{
data(chloride)
library(nlme) # Use the mixed-effects package
# Fit a random coefficients model
summary(m1 <- lme(Cl~Month+Type, data=chloride, random=~1|Marsh))
}
\keyword{datasets}
