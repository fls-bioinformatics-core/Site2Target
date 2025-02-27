% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peakwiseAssociations.R
\name{getTargetGenesPvalsWithDNAInteractions}
\alias{getTargetGenesPvalsWithDNAInteractions}
\title{Fit Negative binomial distribution to target genes}
\usage{
getTargetGenesPvalsWithDNAInteractions(
  dist = "negative binomial",
  geneCoordinates = NA,
  sites = NA,
  strand1 = NA,
  strand2 = NA,
  distance = 50000
)
}
\arguments{
\item{dist}{either "negative binomial" or "poisson"}

\item{geneCoordinates}{granges coordinates of genes}

\item{sites}{granges coordinates of sites}

\item{strand1}{granges of DNA strand1 linked to DNA strand2}

\item{strand2}{granges of DNA strand2 linked to DNA strand1}

\item{distance}{the maximum distance to associate sites to genes. default 50K}
}
\value{
A vector of pvalue distribution for target genes
}
\description{
Get genes and sites coordinates, and associate them by given

distance and user provided DNA interaction (ex. HiC). It tests

the distribution of sites around genes either by poisson or

negative binomial test.
}
\examples{

geneFile=system.file("extdata", "gene_expression.tsv", package="Site2Target")
geneCoords <- Table2Granges(geneFile)

tfFile =system.file("extdata", "MEIS_binding.tsv", package="Site2Target")
TFCoords <- Table2Granges(tfFile)

HiCFile =system.file("extdata", "HiC_intensities.tsv", package="Site2Target")
HiCstr1 <- Table2Granges(HiCFile, chrColName="Strand1_chr",
                     startColName="Strand1_start", endColName="Strand1_end")
HiCstr2 <- Table2Granges(HiCFile, chrColName="Strand2_chr",
                     startColName="Strand2_start", endColName="Strand2_end")

pvals <- getTargetGenesPvalsWithDNAInteractions(
               geneCoordinates=geneCoords, sites=TFCoords, strand1=HiCstr1,
               strand2=HiCstr2)

}
