% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imposeCategoryFormat.R
\docType{methods}
\name{imposeCategoryFormat}
\alias{imposeCategoryFormat}
\alias{imposeCategoryFormat,NMBasicModel-method}
\alias{imposeCategoryFormat,NMRun-method}
\alias{imposeCategoryFormat,data.frame-method}
\alias{imposeCategoryFormat,NMSimModel-method}
\alias{imposeCategoryFormat,NMSimModelNM7-method}
\alias{imposeCategoryFormat,NMSimDataGen-method}
\title{Forces the data in a NONMEM object to conform to the variable formats specified in the metadata. Users will be allowed to choose a subset of 
variables which should be formatted.  Variables that are formatted should be coerced to factors, with the levels set as described by the comma 
separated string stored within the metadata.}
\usage{
imposeCategoryFormat(obj, varSubset, ...)

\S4method{imposeCategoryFormat}{NMBasicModel}(obj, varSubset)

\S4method{imposeCategoryFormat}{NMRun}(obj, varSubset, problemNum = 1)

\S4method{imposeCategoryFormat}{data.frame}(obj, varSubset)

\S4method{imposeCategoryFormat}{NMSimModel}(obj, varSubset)

\S4method{imposeCategoryFormat}{NMSimModelNM7}(obj, varSubset)

\S4method{imposeCategoryFormat}{NMSimDataGen}(obj, varSubset)
}
\arguments{
\item{obj}{An object of class NMRun, NMBasicModel or data.frame}

\item{varSubset}{The variables to be converted to factors. It can be a vector of variable names or a comma separated string}

\item{...}{Additional arguments that apply to different classes. These are \code{problemNum} which specifies the required run 
for a NMRun object}
}
\value{
A new object with the required data coerced to factors of the correct form
}
\description{
Forces the data in a NONMEM object to conform to the variable formats specified in the metadata. Users will be allowed to choose a subset of 
variables which should be formatted.  Variables that are formatted should be coerced to factors, with the levels set as described by the comma 
separated string stored within the metadata.
}
\examples{
x <- data.frame(SMOK = sample(0:1, 10, replace = TRUE), SEX = sample(1:2, 10, replace = TRUE))
print(imposeCategoryFormat(x)) 
}
\author{
Mango Solutions
}
