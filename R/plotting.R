
#' Helper function for plotting.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis.
#' @return A list of ggplot2 objects.
get_labels <- function(xlab, ylab) {
    list(
        ggplot2::xlab(xlab),
        ggplot2::ylab(ylab),
        ggplot2::theme_minimal(),
        ggplot2::scale_color_brewer(palette = "Set1")
    )
}

#' Create a line plot using ggplot2.
#'
#' This function creates a line plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param y The variable to be plotted on the y-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis.
#' @param color A variable for color grouping (optional).
#' @return A ggplot2 line plot.
#' @export
ee_line <- function(data, x, y, xlab=x, ylab=y, color=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, y=y, color=color)) +
        ggplot2::geom_line() +
        get_labels(xlab, ylab)
    return(plot)
}

#' Create a boxplot using ggplot2.
#'
#' This function creates a boxplot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param y The variable to be plotted on the y-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis.
#' @param color A variable for color grouping (optional).
#' @return A ggplot2 boxplot.
#' @export
ee_box <- function(data, x, y, xlab=x, ylab=y, color=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, y=y, fill=color)) +
        ggplot2::geom_boxplot() +
        get_labels(xlab, ylab)
    return(plot)
}

#' Create a bar plot using ggplot2.
#'
#' This function creates a bar plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis (default is "Count").
#' @param fill A variable for fill grouping (optional).
#' @return A ggplot2 bar plot.
#' @export
ee_bar <- function(data, x, xlab=x, ylab="Count", fill=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, fill=fill)) +
        ggplot2::geom_bar() +
        get_labels(xlab, ylab)
    return(plot)
}

#' Create a density plot using ggplot2.
#'
#' This function creates a density plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis (default is "Density").
#' @param fill A variable for fill grouping (optional).
#' @return A ggplot2 density plot.
#' @export
ee_density <- function(data, x, xlab=x, ylab="Density", fill=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, fill=fill)) +
        ggplot2::geom_density(alpha = 0.5) +
        get_labels(xlab, ylab)
    return(plot)
}


#' Create a violin plot using ggplot2.
#'
#' This function creates a violin plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param y The variable to be plotted on the y-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis.
#' @param fill A variable for fill grouping (optional).
#' @return A ggplot2 violin plot.
#' @export
ee_violin <- function(data, x, y, xlab=x, ylab=y, fill=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, y=y, fill=fill)) +
        ggplot2::geom_violin() +
        get_labels(xlab, ylab)
    return(plot)
}

#' Create a hexbin plot using ggplot2.
#'
#' This function creates a hexbin plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param y The variable to be plotted on the y-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis.
#' @return A ggplot2 hexbin plot.
#' @export
ee_hex <- function(data, x, y, xlab=x, ylab=y) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, y=y)) +
        ggplot2::geom_hex() +
        get_labels(xlab, ylab)
    return(plot)
}

#' Create a dot plot using ggplot2.
#'
#' This function creates a dot plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param y The variable to be plotted on the y-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis.
#' @param color A variable for color grouping (optional).
#' @return A ggplot2 dot plot.
#' @export
ee_dot <- function(data, x, y, xlab=x, ylab=y, color=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, y=y, color=color)) +
        ggplot2::geom_dotplot(binaxis='y', stackdir='center') +
        get_labels(xlab, ylab)
    return(plot)
}


#' Create a rug plot using ggplot2.
#'
#' This function creates a rug plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis (optional).
#' @return A ggplot2 rug plot.
#' @export
ee_rug <- function(data, x, xlab=x, ylab=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x)) +
        ggplot2::geom_rug() +
        get_labels(xlab, ylab)
    return(plot)
}

#' Create a frequency polygon plot using ggplot2.
#'
#' This function creates a frequency polygon plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis (default is "Frequency").
#' @param color A variable for color grouping (optional).
#' @return A ggplot2 frequency polygon plot.
#' @export
ee_freqpoly <- function(data, x, xlab=x, ylab="Frequency", color=NULL) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, color=color)) +
        ggplot2::geom_freqpoly(binwidth = 1) +
        get_labels(xlab, ylab)
    return(plot)
}

#' Create a colored tile plot using ggplot2.
#'
#' This function creates a colored tile plot using ggplot2 based on the specified data
#' and aesthetics.
#'
#' @param data A data frame.
#' @param x The variable to be plotted on the x-axis.
#' @param y The variable to be plotted on the y-axis.
#' @param z The variable for color fill.
#' @param xlab Label for the x-axis.
#' @param ylab Label for the y-axis.
#' @return A ggplot2 colored tile plot.
#' @export
ee_col <- function(data, x, y, z, xlab=x, ylab=y) {
    plot <- ggplot2::ggplot(data, ggplot2::aes_string(x=x, y=y, fill=z)) +
        ggplot2::geom_tile() +
        get_labels(xlab, ylab)
    return(plot)
}
