% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pcaFunction.R
\name{PCAanalysis}
\alias{PCAanalysis}
\title{PCAanalysis}
\usage{
PCAanalysis(MetFlowData, QC = FALSE, log.scale = FALSE,
  scale.method = "auto", path = ".", color = c("palegreen",
  "royalblue", "firebrick1", "tan1", "deepskyblue", "cyan", "gray48",
  "chocolate4", "darkmagenta", "indianred1"), shape = c(17, 19, 15, 18,
  2, 8, 11, 13, 12, 14), cex.lab = 1.3, cex.axis = 1.3, cex = 1.3,
  cex.text = 1, width = 7, height = 7, text = FALSE,
  ellipse = TRUE, xlim1 = NULL, ylim1 = NULL)
}
\arguments{
\item{MetFlowData}{MetFlowData.}

\item{QC}{Use qc data for PCA analyis or not? Default is FALSE.}

\item{log.scale}{Which transformation methd you want to use? 2, 10  or "e",
defaulit is FALSE mean don't transformation.}

\item{scale.method}{Which scale methd you want to use? "auto" or "pareto",
defaulit is "auto".}

\item{path}{Work Directory}

\item{color}{Color for different class.}

\item{shape}{Shape for different class. please see the help of par(pch).}

\item{cex.lab}{cex of lab.}

\item{cex.axis}{cex of axis.}

\item{cex}{cex.}

\item{cex.text}{cex of text.}

\item{width}{width of plot.}

\item{height}{height of plot.}

\item{text}{Add text in PCA score plot or not? Deefault is FALSE.}

\item{ellipse}{Add ellipse in PCA score plot or not? Deefault is TRUE.}

\item{xlim1}{x axis limitation. Default is NULL.}

\item{ylim1}{y axis limitation. Default is NULL.}
}
\value{
PCA score plot.
}
\description{
PCA analysis for MetFlowData.
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
## run
PCAanalysis(met.data.after.pre, QC = TRUE, path = "Demo for PCAanalysis")
}
}
\author{
Xiaotao Shen
\email{shenxt@sioc.ac.cn}
}
