% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cbind_expand.R
\name{cbind_expand}
\alias{cbind_expand}
\title{Combine matrices by columns, expanding and aligning rows}
\usage{
cbind_expand(...)
}
\arguments{
\item{...}{A set of matrices or data frames}
}
\value{
The matrices combined by columns, using row names to align the rows, and expanding with missing values if there are rows in some matrices but not others.
}
\description{
This is like \code{\link[base:cbind]{base::cbind()}} but using row names to align the rows and expanding
with missing values if there are rows in some matrices but not others.
}
\examples{
df1 <- data.frame(x=c(1,2,3,NA,4), y=c(5,8,9,10,11), row.names=c("A", "B", "C", "D", "E"))
df2 <- data.frame(w=c(7,8,0,9,10), z=c(6,NA,NA,9,10), row.names=c("A", "B", "F", "C", "D"))
cbind_expand(df1, df2)
}
