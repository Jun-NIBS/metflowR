% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/toolsForMetflowR.R
\name{DataOverview}
\alias{DataOverview}
\title{DataOverview}
\usage{
DataOverview(MetFlowData, feature.distribution = TRUE, path = ".")
}
\arguments{
\item{MetFlowData}{MetFlowData}

\item{feature.distribution}{Draw a rt vs mz vs intensity plot or not.
Default is TRUE.}

\item{path}{Work directory.}
}
\value{
Data overview_RT vs mz vs intensity.pdf:
A RT vs mz vs intensity plot.

Data overview.txt: A overview information for MetFlowData.
}
\description{
Give a overview of MetFlowData.
}
\examples{
\donttest{
#load the demo data
data(data, package = "metflowR")
data(sample.information, package = "metflowR")

##create a folder for demo
dir.create("demo")
setwd("demo")

# export the demo data as csv
write.csv(data, "data.csv", row.names = FALSE)
write.csv(sample.information, "sample.information.csv", row.names = FALSE)

# metflowR process
metflowR(#ImportData para
data = "data.csv",
sample.information = "sample.information.csv",
polarity = "positive",
#DataNormalization
method = "svr",
threads = 2)
## run DataOverview
DataOverview(MetFlowData = met.data.after.pre, path = "Demo for DataOverview")
}
}
\author{
Xiaotao Shen
\email{shenxt@sioc.ac.cn}
}
