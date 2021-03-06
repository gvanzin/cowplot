% Generated by roxygen2 (4.0.2): do not edit by hand
\name{save_plot}
\alias{save_plot}
\title{Alternative to ggsave, with better support for multi-figure plots.}
\usage{
save_plot(filename, plot, ncol = 1, nrow = 1, base_height = 4,
  base_aspect_ratio = 1.1, base_width = NULL, ..., cols = NULL,
  rows = NULL)
}
\arguments{
\item{filename}{Name of the plot file to generate.}

\item{plot}{Plot to save.}

\item{ncol}{Number of subplot columns.}

\item{nrow}{Number of subplot rows.}

\item{base_height}{The height (in inches) of the plot or of one sub-plot if \code{nrow}
or \code{ncol} > 1. Default is 4.}

\item{base_aspect_ratio}{The aspect ratio of the plot or of one sub-plot if \code{nrow}
or \code{ncol} > 1. This argument is only used if \code{base_width = NULL}. The default is 1.1,
which works well for figures without a legend.}

\item{base_width}{The width (in inches) of the plot or of one sub-plot if \code{nrow}
or \code{ncol} > 1. Default is \code{NULL}, which means that the width is calculated from
\code{height} and \code{base_aspect_ratio}.}

\item{...}{Other arguments to be handed to \code{ggsave()}.}

\item{cols}{Deprecated. Like \code{ncol}.}

\item{rows}{Deprecated. Like \code{nrow}.}
}
\description{
This function replaces the standard \code{ggsave()} function for saving a plot into a file. It
has several advantages over \code{ggsave()}. First, it uses default sizes that work well with
the cowplot theme, so that frequently a plot size does not have to be explicitly specified. Second, it
acknowledges that one often first develops individual plots and then combines them into
multi-plot figures, and it makes it easy---in combination with \code{plot_grid()}---to carry out
this workflow. Finally, it makes it easy to adjust the aspect ratio of the figure, which is
frequently necessary to accommodate the figure legend.
}
\details{
The key idea for this function is that plots are often grids, with sup-plots at the individual
grid locations. Therefore, for this function we specify a base width and aspect ratio that apply
to one sup-plot, and we then specify how many rows and columns of subplots we have. This means that
if we have code that can save a single figure, it is trivial to adapt this code to save a combination
of multiple comparable figures. See examples for details.
}
\examples{
# save a single plot without legend
x <- (1:100)/10
p1 <- qplot(x, 2*x+5, geom='line')
save_plot("p1.pdf", p1)
# now combine with a second plot and save
p2B <- qplot(x, -x^2+10*x-3, geom='line')
p2 <- plot_grid(p1, p2B, labels=c("A", "B"))
save_plot("p2.pdf", p2, ncol = 2)
# save a single plot with legend, changing the aspect ratio to make room for the legend
p3 <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)
save_plot("p3.png", p3, base_aspect_ratio = 1.3)
}

