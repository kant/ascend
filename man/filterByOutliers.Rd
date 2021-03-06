% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ascend_filtering.R
\name{filterByOutliers}
\alias{filterByOutliers}
\title{filterByOutliers}
\usage{
filterByOutliers(object, cell.threshold = 3, gene.threshold = 3,
  control.threshold = 3)
}
\arguments{
\item{object}{An \linkS4class{EMSet}.}

\item{cell.threshold}{Mean Absolute Deviation (MAD) value to filter cells by 
library size. Default: 3.}

\item{gene.threshold}{Mean Absolute Deviation (MAD) value to filter cells by
number of expressed genes. Default: 3}

\item{control.threshold}{Mean Absolute Deviation (MAD) value to filter cells 
by proportion of control genes. Default: 3.}
}
\value{
An \linkS4class{EMSet} with outlier cells filtered out.
}
\description{
Automatically filter cells based on expression levels.
These values are then used to filter out cells based on the following criteria:
\itemize{
\item{Low overall gene expression.}
\item{Low number of expressed genes.}
\item{Expression of control genes beyond set threshold.}
}
}
\details{
This function then loads the filtered expression matrix into the \linkS4class{EMSet}.
}
\examples{
# Load EMSet
raw_emset <- ascend::raw_set

# Filter by outliers with default settings
filtered_emset <- filterByOutliers(raw_emset, cell.threshold = 3, 
gene.threshold = 1.5, control.threshold = 3)

}
