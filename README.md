# *sourcerr*
## Easily output package citations and session information for reproducibility in research publications.

<h3 align = "right">Colby T. Ford, Ph.D.</h3>

<img align="right" src="https://raw.githubusercontent.com/colbyford/sourcerr/master/img/sourcerr_hex.png" alt="sourcerr icon" width="200">

[![CRAN status](https://www.r-pkg.org/badges/version/sourcerr)](https://cran.r-project.org/package=sourcerr)

## Installation

You can install the latest stable version from GitHub using the following command:
```r
library(devtools)
install_github("colbyford/sourcerr")
library(sourcerr)
```

## Usage

```r
## Load in the libraries into the R session
library(tidyverse)
library(ggplot2)
library(glmnet)
library(doParallel)

## Cite all loaded packages
cite_packages(outfile = "../../Downloads/citations.bibtex",
              format = "bibtex",
              detaillevel = "loaded")
```
