
#####################
# internal function #
#####################


#' addBestSignatureToSubset (internal function)
#'
#' Add the best signature to an existing subset (highest increase in expl. var.)
#' to improve the approximate decomposition of a genome.
#'
#' @usage addBestSignatureToSubset(genome, signatures, subset,
#' constrainToMaxContribution=FALSE, tolerance=0.1)
#' @param genome Genome for which to improve the decomposition.
#' @param signatures The whole set of signatures (from which to choose
#' additional signatures.
#' @param subset The current subset that is used for decomposition.
#' @param constrainToMaxContribution (Optional) [Note: this is experimental
#' and is usually not needed!] If \code{TRUE}, the maximum contribution that
#' can be attributed to a signature will be constraint by the variant feature
#' counts (e.g., specific flanking bases) observed in the individual tumor
#' genome. If, for example, 30\% of all observed variants have a specific
#' feature and 60\% of the variants produced by a mutational process/signature
#' will manifest the feature, then the signature can have contributed up to
#' 0.3/0.6 (=0.5 or 50\%) of the observed variants. The lowest possible
#' contribution over all signature features will be taken as the allowed
#' maximum contribution of the signature. This allowed maximum will
#' additionally be increased by the value specified as \code{tolerance}
#' (see below). For the illustrated example and \code{tolerance}=0.1 a
#' contribution of up to 0.5+0.1 = 0.6 (or 60\%) of the signature would be
#' allowed. 
#' @param tolerance (Optional) If \code{constrainToMaxContribution} is
#' \code{TRUE}, the maximum contribution computed for a signature is increased
#' by this value (see above). If the parameter \code{constrainToMaxContribution}
#' is \code{FALSE}, the tolerance value is ignored. Default: 0.1. 
#' @return A list object containing: k=number of signatures; 
#' explVar=variance explained by these signatures; 
#' sigList=list of the signatures; 
#' decomposition=decomposition (exposures) obtained with these signatures.
#' @author Rosario M. Piro\cr Freie Universitaet Berlin\cr Maintainer: Rosario
#' M. Piro\cr E-Mail: <rmpiro@@gmail.com> or <r.piro@@fu-berlin.de>
#' @references \url{http://rmpiro.net/decompTumor2Sig/}\cr
#' Krueger, Piro (2018) decompTumor2Sig: Identification of mutational
#' signatures active in individual tumors. BMC Bioinformatics (accepted for
#' publication).\cr
#' Krueger, Piro (2017) Identification of Mutational Signatures Active in
#' Individual Tumors. NETTAB 2017 - Methods, Tools & Platforms for
#' Personalized Medicine in the Big Data Era, October 16-18, 2017, Palermo,
#' Italy. PeerJ Preprints 5:e3257v1, 2017.
#' @keywords internal
addBestSignatureToSubset <- function(genome, signatures, subset,
                                     constrainToMaxContribution=FALSE,
                                     tolerance=0.1) {

    subsetIndices <- which(names(signatures) %in% subset)
    restIndices <- which(!(names(signatures) %in% subset))

    # get all possible combinations of subset + one assitional signature
    sigCombn <-
        lapply(restIndices, function(ix) { sort(c(subsetIndices, ix)) } )
    
    names(sigCombn) <-
        vapply(sigCombn, function(set) {
            paste(names(signatures)[set],collapse="|")
        }, FUN.VALUE=character(1) )

    #print(sigCombn)

    processMultipleSigSets(genome, signatures, sigCombn, length(subset)+1,
                           constrainToMaxContribution, tolerance)
}
