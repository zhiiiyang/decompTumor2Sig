% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mathematical_functions.R
\name{roundIntegerSum}
\alias{roundIntegerSum}
\title{roundIntegerSum (internal function)}
\usage{
roundIntegerSum(vec, targetSum)
}
\arguments{
\item{vec}{Vector of integers.}

\item{targetSum}{The target sum to be reached.}
}
\value{
The updated vector with the desired total sum.
}
\description{
update a numeric vector such that it's composed of integers and its sum
reaches a desired total. Positive or negative discrepancies are distributed
proportionally between the summands.
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
