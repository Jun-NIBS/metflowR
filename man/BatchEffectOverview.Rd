% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/toolsForMetflowR.R
\name{BatchEffectOverview}
\alias{BatchEffectOverview}
\title{BatchEffectOverview}
\usage{
BatchEffectOverview(MetFlowData.before, MetFlowData.after, path = ".")
}
\arguments{
\item{MetFlowData.before}{MetFlowData before normalization or integration.}

\item{MetFlowData.after}{MetFlowData after normalization or integration.}

\item{path}{work directory}
}
\value{
Give PCA score plot for QC and subject.
}
\description{
Using PCA score plot to view the batch effect.
}
\author{
Xiaotao Shen
\email{shenxt@sioc.ac.cn}
}
