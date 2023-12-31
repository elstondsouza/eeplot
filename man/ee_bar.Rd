% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{ee_bar}
\alias{ee_bar}
\title{Create a bar plot using ggplot2.}
\usage{
ee_bar(data, x, xlab = x, ylab = "Count", fill = NULL)
}
\arguments{
\item{data}{A data frame.}

\item{x}{The variable to be plotted on the x-axis.}

\item{xlab}{Label for the x-axis.}

\item{ylab}{Label for the y-axis (default is "Count").}

\item{fill}{A variable for fill grouping (optional).}
}
\value{
A ggplot2 bar plot.
}
\description{
This function creates a bar plot using ggplot2 based on the specified data
and aesthetics.
}
