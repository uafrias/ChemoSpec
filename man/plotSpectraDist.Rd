\name{plotSpectraDist}
\alias{plotSpectraDist}
\title{
Plot the Distance Between Spectra in a Spectra Object
}
\description{
This function plots the distance between a reference spectrum and all other spectra in a \code{Spectra} object.  Distance can be defined in a number of ways (see Arguments).
}
\usage{
plotSpectraDist(spectra, method = "pearson", ref = 1, labels = TRUE, ...)
}
\arguments{
  \item{spectra}{
  An object of S3 class \code{\link{Spectra}}.
}
  \item{method}{
Character.  Any method acceptable to \code{\link{rowDist}}.
}
  \item{ref}{
Integer.  The spectrum to be used as a reference.
}
  \item{labels}{
Logical.  Shall the points be labeled?
}
  \item{\dots}{
Plot parameters to be passed to the plotting routines.
}
}
\value{
A data frame containing the data plotted (sample names, sample colors, distances).
}
\references{
\url{https://github.com/bryanhanson/ChemoSpec}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\examples{
  data(SrE.NMR)
  txt1 <- paste("Distance from", SrE.NMR$names[1]) # capture before padding
  txt2 <- paste("Rank Distance from", SrE.NMR$names[1])
  SrE.NMR$names <- paste("  ", SrE.NMR$names, sep = "") # pad the names for better appearance
  tst <- plotSpectraDist(SrE.NMR, xlab = txt2, ylab = txt1, main = txt1,
  	xlim = c(1,16), ylim = c(0, 0.3), srt = 90)
}

\keyword{ hplot }
\keyword{ multivariate }
