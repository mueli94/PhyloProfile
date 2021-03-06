% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createDomainPlot.R
\name{domainPlotting}
\alias{domainPlotting}
\title{Create architecure plot for a single protein}
\usage{
domainPlotting(df, geneID, sep, labelSize, titleSize, minStart,
    maxEnd, colorScheme)
}
\arguments{
\item{df}{domain dataframe for ploting}

\item{geneID}{ID of seed or orthologous protein}

\item{sep}{separate indicator for title}

\item{labelSize}{lable size}

\item{titleSize}{title size}

\item{minStart}{the smallest start position of all domains}

\item{maxEnd}{the highest stop position of all domains}

\item{colorScheme}{color scheme for all domain types}
}
\value{
A ggplot object
}
\description{
Create architecure plot for a single protein
}
\examples{
\dontrun{
# get domain data
domainFile <- system.file(
    "extdata", "domainFiles/OG_1009.domains",
    package = "PhyloProfile", mustWork = TRUE
)
domainDf <- parseDomainInput(seedID, domainFile, "file")
df <- domainDf[domainDf$orthoID == "A.thaliana@3702@241736",]
# create color scheme for all domain types
allFeatures <- levels(as.factor(df$feature))
allColors <- getQualColForVector(allFeatures)
colorScheme <- structure(
    allColors,
    .Names = allFeatures
)
# other parameters
geneID <- "A.thaliana@3702@241736"
sep <- "|"
labelSize <- 9
titleSize <- 9
minStart <- min(df$start)
maxEnd <- max(df$end)
# do plotting
domainPlotting(
    df,
    geneID,
    sep,
    labelSize, titleSize,
    minStart, maxEnd,
    colorScheme
)
}
}
\seealso{
\code{\link{getQualColForVector}},
\code{\link{parseDomainInput}}
}
\author{
Vinh Tran {tran@bio.uni-frankfurt.de}
}
