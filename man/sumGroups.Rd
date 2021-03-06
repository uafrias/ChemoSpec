\name{sumGroups}
\alias{sumGroups}
\title{
Summarize the Group Parameters of a Spectra Object
}
\description{
This function summarizes the group membership and descriptive parameters of a \code{\link{Spectra}} object.
}
\usage{
sumGroups(spectra)
}
\arguments{
  \item{spectra}{
An object of S3 class \code{\link{Spectra}} whose group membership information is desired.
}
}
\value{
A data frame as follows.  Note that if there are groups with no members (due to previous use of \code{\link{removeSample}}), these are dropped.
	\item{group}{The name of the group.}
	\item{no.}{The number in the group.}
	\item{color}{The color assigned to the group.}
	\item{symbol}{The symbol assigned to the group.}
	\item{alt.symbol}{The alternative symbol, a lower-case letter, assigned to the group.}
}


\references{
\url{https://github.com/bryanhanson/ChemoSpec}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}
\seealso{
For a discussion of general issues of color, see \code{\link{colorSymbol}}.
}
\examples{
data(metMUD1)
sumGroups(metMUD1)
}
\keyword{ utilities }
