% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createCategorical.R
\docType{methods}
\name{addDerivedCategorical}
\alias{addDerivedCategorical}
\alias{addDerivedCategorical,NMBasicModel-method}
\alias{addDerivedCategorical,NMRun-method}
\alias{addDerivedCategorical,data.frame-method}
\alias{addDerivedCategorical,NMSimModel-method}
\alias{addDerivedCategorical,NMSimModelNM7-method}
\alias{addDerivedCategorical,NMSimDataGen-method}
\title{Add binned variable to NONMEM object}
\usage{
addDerivedCategorical(obj, varName, newVar = paste(varName, ".CUT", sep = ""),
  breaks = 5, binType = "range", labels = NULL, ...)

\S4method{addDerivedCategorical}{NMBasicModel}(obj, varName,
  newVar = paste(varName, ".CUT", sep = ""), breaks = 5,
  binType = "range", labels = NULL, dataType = "output")

\S4method{addDerivedCategorical}{NMRun}(obj, varName, newVar = paste(varName,
  ".CUT", sep = ""), breaks = 5, binType = "range", labels = NULL,
  problemNum = 1, dataType = "output")

\S4method{addDerivedCategorical}{data.frame}(obj, varName,
  newVar = paste(varName, ".CUT", sep = ""), breaks = 5,
  binType = "range", labels = NULL)

\S4method{addDerivedCategorical}{NMSimModel}(obj, varName,
  newVar = paste(varName, ".CUT", sep = ""), breaks = 5,
  binType = "range", labels = NULL, dataType = "output")

\S4method{addDerivedCategorical}{NMSimModelNM7}(obj, varName,
  newVar = paste(varName, ".CUT", sep = ""), breaks = 5,
  binType = "range", labels = NULL, dataType = "output")

\S4method{addDerivedCategorical}{NMSimDataGen}(obj, varName,
  newVar = paste(varName, ".CUT", sep = ""), breaks = 5,
  binType = "range", labels = NULL, dataType = "output")
}
\arguments{
\item{obj}{An object of class NMBasicModel, NMRun, NMSimModel, NMSimDataGen or data.frame}

\item{varName}{The variable to "bin"}

\item{newVar}{The name of the new variable}

\item{breaks}{The number of breaks}

\item{binType}{The type of "binning"}

\item{labels}{The labels for the "bins"}

\item{...}{Additional arguments that apply to different classes. These are dataType which specifies what data to use, i.e input or 
output, for NMBasicModel, NMRun, NMSimModel and NMSimDataGen, and problemNum which specifies the required run for an NMRun object}
}
\value{
A new object with a user-specified "binned" variable added
}
\description{
This function allows the user to create new variables derived from actual input or output data stored in a NONMEM object or a data.frame.
The function "bins" the data in a user-chosen manner.  The new "binned" variable will be added to the "additionalVars" data frame of the object, or as a new column if the 
object is a data.frame. The methods for creating the categorical variables are:
\itemize{
 \item{unique:}{Variable is coerced into a factor with no "binning" at all}
 \item{explicitcuts:}{The user supplies "cut points" for partitioning the data}
 \item{range:}{The user specifies a number of cut points, and they are the generated by cutting the range of the values of the variable into the given number}
 \item{logrange:}{As above, but done by range of the log of the variable}
 \item{counts:}{User specifies number of cut points, and the bins are then generated so that the bins have equal amounts of data}
}
}
\note{
If the \code{binType} is \code{counts} and calculation of quantiles generates duplicates, a warning will be eliminated and the duplicates
will be discarded.
}
\examples{
x <- addDerivedCategorical(mtcars, "mpg", breaks = 6, binType = "counts" )
show(x$mpg.CUT)
}
\author{
Mango Solutions
}
\keyword{datagen}
