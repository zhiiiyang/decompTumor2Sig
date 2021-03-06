% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/buildGenomesFromMutationData.R
\name{buildGenomesFromMutationData}
\alias{buildGenomesFromMutationData}
\title{buildGenomesFromMutationData (internal function)}
\usage{
buildGenomesFromMutationData(snvs, numBases, type, trDir,
uniqueTrDir=TRUE, refGenome, transcriptAnno, verbose)
}
\arguments{
\item{snvs}{SNV matrix (see description above).}

\item{numBases}{Number of bases for the sequence pattern (odd integer).}

\item{type}{Type of signature to be used ("Alexandrov", "Shiraishi").}

\item{trDir}{Logical: use transcription-strand information?}

\item{uniqueTrDir}{Logical; used only if trDir is also \code{TRUE}: if
\code{uniqueTrDir} is \code{TRUE} (default), then only mutations with only
one defined transcription strand will be used, mutations for which both 
strands are valid are ignored. If \code{FALSE}, these mutations are accepted 
and one of the two transcription strands will be arbitrarily taken (the  
first one encountered in the databse specified for \code{transcriptAnno}). 
The latter was the behavior until version 1.3.5 of \code{decompTumor2Sig} 
and is also the behavior of \code{pmsignature}.}

\item{refGenome}{Reference genome (\code{BSgenome} object).}

\item{transcriptAnno}{Transcription information (\code{TxDb} object).}

\item{verbose}{Logical. Print additional information?}
}
\value{
A list of genomes: each genome is represented by the observed
frequencies of mutation patterns according to the selected signature type.
}
\description{
Build genome data structures (same as signatures) and fill then with
mutation data.
}
\details{
SNVs are specified as a matrix of the following format (adapted from VCF):\cr
#> snvs[1:2,]\cr
#     CHROM POS  REF ALT FORMAT           sample1                 sample2\cr
#[1,] "2"  "947" "C" "T" "GT:PL:GQ:AD:DP" "1/1:84,6,0:6:0,2:2"    NA\cr
#[2,] "2"  "992" "G" "A" "GT:PL:GQ:AD:DP" "0/1:123,0,33:33:1,3:4" "0/0:..."
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
