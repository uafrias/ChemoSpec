\name{r_pcaSpectra}
\Rdversion{1.1}
\alias{r_pcaSpectra}

\title{
Robust PCA of a Spectra Object
}
\description{
A wrapper which carries out robust PCA analysis on a \code{\link{Spectra}} object.  The data are row- and column-centered, and the user can select various options for scaling.  
}

\usage{
r_pcaSpectra(spectra, choice = "noscale")
}

\arguments{
  \item{spectra}{
An object of S3 class \code{\link{Spectra}}.
}
  \item{choice}{
A character vector describing the type of scaling to be carried out.  One of \code{c("noscale", "mad")}.
}
}

\value{
An object of classes \code{"conPCA"} and \code{"princomp"} (see \code{\link{q2rPCA}}).  It includes a list element called \code{$method}, a character string describing the pre-processing carried out and the type of PCA performed (it appears on plots which you might make).
}


\references{
K. Varmuza and P. Filzmoser \emph{Introduction to Multivariate Statistical Analysis in Chemometrics}, CRC Press, 2009.

\url{https://github.com/bryanhanson/ChemoSpec}\cr

}

\seealso{
See \code{\link[pcaPP]{PCAgrid}} on which this function is based.  For the classical version, see \code{\link{c_pcaSpectra}}.


For displaying the results, \code{\link{plotScree}}, \code{\link{plotScores}}, \code{\link{plotLoadings}}, \code{\link{plot2Loadings}}, \code{\link{sPlotSpectra}}, \code{\link{plotScores3D}}, \code{\link{plotScoresRGL}}.
}

\examples{
data(metMUD1)
results <- r_pcaSpectra(metMUD1)
plotScores(metMUD1, results, main = "metMUD1 NMR Data",
	pcs = c(1,2), ellipse = "cls", tol = 0.05)
}

\keyword{ multivariate }
\keyword{ robust }
