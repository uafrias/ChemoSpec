\name{plot2Loadings}
\Rdversion{1.1}
\alias{plot2Loadings}

\title{
Plot PCA Loadings from a Spectra Object Against Each Other
}

\description{
Plots two PCA loadings specified by the user, and labels selected (extreme) points.  Typically used to determine which variables (frequencies) are co-varying, although in spectroscopy most peaks are represented by several variables and hence there is a lot of co-varying going on.  Also useful to determine which variables are contributing the most to the clustering on a score plot.
}

\usage{
plot2Loadings(spectra, pca, loads = c(1, 2), tol = 0.05, ...)
}
\arguments{
  \item{spectra}{
An object of S3 class \code{\link{Spectra}}.
}
  \item{pca}{
An object of class \code{\link{prcomp}}, modified to include a list element called \code{$method}, a character string describing the pre-processing carried out and the type of PCA performed (it appears on the plot).  This is automatically provided if \code{ChemoSpec} functions \code{\link{c_pcaSpectra}} or \code{\link{r_pcaSpectra}} were used to create \code{pca}.
}
  \item{loads}{
A vector of two integers specifying which loading vectors to plot.
}
  \item{tol}{
A number describing the fraction of points to be labeled.  \code{tol = 1.0} labels all the points; \code{tol = 0.05} labels the most extreme 5 percent.
}
  \item{\dots}{
Other parameters to be passed to the plotting routines.
}
}
\value{
None.  Side effect is a plot.
}

\references{
\url{https://github.com/bryanhanson/ChemoSpec}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\seealso{
See \code{\link{plotLoadings}} to plot one loading against the original variable (frequency) axis.
}
\examples{
data(SrE.IR)
results <- c_pcaSpectra(SrE.IR)
myt <- expression(bolditalic(Serenoa)~bolditalic(repens)~bold(IR~Spectra))
res <- plot2Loadings(SrE.IR, main = myt, results,
	loads = c(1,2), tol = 0.001)
}
\keyword{ multivariate }
\keyword{ hplot }
