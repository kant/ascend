% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ascend_plots.R
\name{plotFeatureHist}
\alias{plotFeatureHist}
\title{plotFeatureHist}
\usage{
plotFeatureHist(object)
}
\arguments{
\item{object}{An \linkS4class{EMSet} object.}
}
\value{
A ggplot2 glob containing the histogram.
}
\description{
Generates a histogram of all cell feature counts.
}
\examples{
# Load unprocessed EMSet
em_set <- ascend::raw_set

# Use function to plot features
feature_plot <- plotFeatureHist(em_set)

}
