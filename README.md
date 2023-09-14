## eeplot: Enhanced Plotting in R

`eeplot` is an R package that provides a collection of enhanced plotting functions as wrappers around the `ggplot2` package. It offers a simplified interface for generating common plots, while ensuring a consistent and aesthetically pleasing visual style.

### Installation

You can install the development version of `eeplot` from GitHub using the `devtools` package:

```R
# If not already installed
install.packages("devtools")

# Install eeplot from GitHub
devtools::install_github("elstonndsouza/eeplot")
```

### Usage

Load the `eeplot` package just like any other package:

```R
library(eeplot)
```

#### Examples

**Scatter Plot**:
```R
ee_scatter(mtcars, "mpg", "wt", color="cyl")
```

**Histogram**:
```R
ee_hist(mtcars, "mpg", color="cyl")
```

### Features

- Simple and consistent function signatures.
- Automatic application of a minimal and visually appealing theme.
- Support for various plot types including scatter plots, histograms, and more.

### Contributing

We welcome contributions to `eeplot`! If you'd like to contribute, please:

1. Fork the repository on GitHub.
2. Create a new branch for your features or fixes.
3. Submit a pull request, and provide a clear description of your changes.

For major changes or feature requests, please open an issue first to discuss what you'd like to change.

### License

[MIT](LICENSE.md)

---