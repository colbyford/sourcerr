## Load a bunch of libraries
library(tidyverse)
library(ggplot2)
library(glmnet)
library(doParallel)

## Cite all loaded packages
cite_packages(outfile = "../../Downloads/citations.bibtex",
              format = "bibtex",
              detaillevel = "loaded")

## Cite a list of packages
packages <- c("dplyr",
              "ggplot2",
              "tidyr",
              "doParallel")

cite_packages(packages = packages,
              format = "html",
              outfile = "test/test_output.html")

cite_packages(packages = packages,
              format = "latex",
              outfile = "test/test_output.tex")
