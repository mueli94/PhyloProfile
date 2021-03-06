% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getOmaBrowser.R
\name{getOmaMembers}
\alias{getOmaMembers}
\title{Get OMA members}
\usage{
getOmaMembers(id, orthoType)
}
\arguments{
\item{id}{ID of the seed protein (OMA or UniProt ID)}

\item{orthoType}{type of OMA orthologs: either "HOG", "OG"
(orthologous group) or "PAIR" (orthologous pair - CURRENTLY NOT WORKING)}
}
\value{
list of ortholog members
}
\description{
Get OMA orthologs for a seed protein from OMA Browser
}
\examples{
getOmaMembers("HUMAN29397", "OG")
}
\author{
Carla Mölbert {carla.moelbert@gmx.de}
}
