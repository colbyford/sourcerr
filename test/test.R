## Load a bunch of libraries
library(tidyverse)
library(ape)
library(MASS)
library(crosstalk)

outfile = "../../Downloads/citations.html"
format = "html"
detaillevel = "loaded"

cite_packages(outfile,
              format,
              detaillevel)

