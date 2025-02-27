% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peakwiseAssociations.R
\name{getTargetGenesNumber}
\alias{getTargetGenesNumber}
\title{generate number of sites per gene given distances}
\usage{
getTargetGenesNumber(geneCoordinates = NA, sites = NA, distance = 50000)
}
\arguments{
\item{geneCoordinates}{granges coordinates of genes}

\item{sites}{granges coordinates of sites}

\item{distance}{the maximum distance to associate sites to genes. default 50K}
}
\value{
A vector sites number matched to each gene
}
\description{
Get genes and sites coordinates, and associate them by given

distance.
}
\examples{
geneFile=system.file("extdata", "gene_expression.tsv", package="Site2Target")
geneCoords <- Table2Granges(geneFile)

tfFile =system.file("extdata", "MEIS_binding.tsv", package="Site2Target")
TFCoords <- Table2Granges(tfFile)

targetNum <- getTargetGenesNumber( geneCoords, TFCoords)

}
