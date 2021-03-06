% Generated by roxygen2 (4.0.2): do not edit by hand
\name{background_grid}
\alias{background_grid}
\title{Add/modify/remove the background grid in a ggplot2 plot}
\usage{
background_grid(major = c("xy", "x", "y", "only_minor", "none"),
  minor = c("xy", "x", "y", "none"), size.major = 0.2, size.minor = 0.5,
  colour.major = "grey90", colour.minor = "grey98")
}
\arguments{
\item{major}{Specifies along which axes you would like to plot major grid lines. Options are "xy", "x",
"y", "only_minor" (disables major grid lines but allows you to switch on minor grid lines), "none".}

\item{minor}{Specifies along which axes you would like to plot minor grid lines. Options are "xy", "x",
"y", "none".}

\item{size.major}{Size of the major grid lines.}

\item{size.minor}{Size of the minor grid lines.}

\item{colour.major}{Color of the major grid lines.}

\item{colour.minor}{Color of the minor grid lines.}
}
\description{
This function provides a simple way to modify the background grid in ggplot2. It
doesn't do anything that can't be done just the same with \code{theme()}. However, it simplifies
creation of the most commonly needed variations.
}

