% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotShiraishiModel.R
\name{plotShiraishiModel}
\alias{plotShiraishiModel}
\title{plotShiraishiModel (internal function)}
\usage{
plotShiraishiModel(mutData, numBases, trDir, colors = NULL)
}
\arguments{
\item{mutData}{(Mandatory) The signature or genome mutation frequency data
to be plotted.}

\item{numBases}{The number of bases of the sequence pattern.}

\item{trDir}{Logical value specifying whether transcription strand
information is present.}

\item{colors}{Vector of four colors to be used for the base data.
If \code{NULL} (default), the colors are consensus colors used for
sequence logos.}
}
\value{
Returns (or draws) a plot according to the Shiraishi model of
mutational signatures.
}
\description{
`plotShiraishiModel()` plots a single signature or the mutation
frequency data for a single genome of the Shiraishi-type model.
}
\references{
\url{http://rmpiro.net/decompTumor2Sig/}\cr
Krueger, Piro (2018) decompTumor2Sig: Identification of mutational
signatures active in individual tumors. BMC Bioinformatics (accepted for
publication).\cr
Krueger, Piro (2017) Identification of Mutational Signatures Active in
Individual Tumors. NETTAB 2017 - Methods, Tools & Platforms for
Personalized Medicine in the Big Data Era, October 16-18, 2017, Palermo,
Italy. PeerJ Preprints 5:e3257v1, 2017.
}
\author{
Rosario M. Piro\cr Freie Universitaet Berlin\cr Maintainer: Rosario
M. Piro\cr E-Mail: <rmpiro@gmail.com> or <r.piro@fu-berlin.de>
}
\keyword{internal}
