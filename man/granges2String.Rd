% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{granges2String}
\alias{granges2String}
\title{Convert granges to strings of coordinates}
\usage{
granges2String(gr)
}
\arguments{
\item{gr}{granges coordinates}
}
\value{
string of coordinates
}
\description{
Get genomic coordinates granges and convert them to strings
}
\examples{
tfFile =system.file("extdata", "MEIS_binding.tsv", package="Site2Target")
TFCoords <- Table2Granges(tfFile)
strCoords <- granges2String(TFCoords)
head(strCoords)

}
