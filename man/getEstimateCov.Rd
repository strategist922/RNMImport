% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/retrieveMisc.R
\docType{methods}
\name{getEstimateCov}
\alias{getEstimateCov}
\alias{getEstimateCov,NMRun-method}
\alias{getEstimateCov,NMBasicModel-method}
\title{Returns variance-covariance matrix, if available, from a NONMEM object}
\usage{
getEstimateCov(obj, corMatrix = FALSE, invCorMatrix = FALSE,
  pdMatrix = FALSE, ...)

\S4method{getEstimateCov}{NMRun}(obj, corMatrix = FALSE,
  invCorMatrix = FALSE, pdMatrix = FALSE, problemNum = 1, method = 1)

\S4method{getEstimateCov}{NMBasicModel}(obj, corMatrix = FALSE,
  invCorMatrix = FALSE, pdMatrix = FALSE, ...)
}
\arguments{
\item{obj}{An object of class NMRun or NMBasicModel}

\item{corMatrix}{TRUE or FALSE.  If TRUE, returns correlation matrix as well}

\item{invCorMatrix}{TRUE or FALSE, Not implemented yet}

\item{pdMatrix}{TRUE or FALSE.  If TRUE, will check that a positive-definite covariance matrix is available.
If it is not, it will create one based on sample variances and covariances of estimates.  Not implemented yet}

\item{...}{}
}
\value{
A matrix if just the covariance matrix is required, a list of matrices otherwise
}
\description{
Retrieves the variance-covariance matrix of the estimators and optionally
 the correlation and inverse correlation matrices of the selected NONMEM run
}
\author{
Mango Solutions
}
