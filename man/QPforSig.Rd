% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QPforSig.R
\name{QPforSig}
\alias{QPforSig}
\title{QPforSig (internal function)}
\usage{
QPforSig(counts, signatures, constrainToMaxContribution=FALSE,
tolerance=0.1)
}
\arguments{
\item{counts}{The genome's mutation frequencies (either in Alexandrov or
Shiraishi format).}

\item{signatures}{The signatures to be used for decomposition. Must be in
the same format as the genome's \code{counts}.}

\item{constrainToMaxContribution}{(Optional) [Note: this is experimental
and is usually not needed!] If \code{TRUE}, the maximum contribution that
can be attributed to a signature will be constraint by the variant feature
counts (e.g., specific flanking bases) observed in the individual tumor
genome. If, for example, 30\% of all observed variants have a specific
feature and 60\% of the variants produced by a mutational process/signature
will manifest the feature, then the signature can have contributed up to
0.3/0.6 (=0.5 or 50\%) of the observed variants. The lowest possible
contribution over all signature features will be taken as the allowed
maximum contribution of the signature. This allowed maximum will
additionally be increased by the value specified as \code{tolerance}
(see below). For the illustrated example and \code{tolerance}=0.1 a
contribution of up to 0.5+0.1 = 0.6 (or 60\%) of the signature would be
allowed.}

\item{tolerance}{(Optional) If \code{constrainToMaxContribution} is
\code{TRUE}, the maximum contribution computed for a signature is increased
by this value (see above). If the parameter \code{constrainToMaxContribution}
is \code{FALSE}, the tolerance value is ignored. Default: 0.1.}
}
\value{
The decomposition in form of an exposure vector (same order as
\code{signatures}).
}
\description{
Perform quadratic programming for signatures to determine exposures.
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
