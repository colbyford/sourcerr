% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cite_packages.R
\name{cite_packages}
\alias{cite_packages}
\title{Generate citation list of all packages in a variety of formats.}
\usage{
cite_packages(packages = c(), outfile, format = "bibtex",
  detaillevel = "loaded")
}
\arguments{
\item{packages}{(Optional) Vector of package names. If blank, the package will look to loaded packages to be included in the citation list.}

\item{outfile}{Path and filename where the citation file should be written.}

\item{format}{Output format of the citation file. Select from "bibtex", "latex", "html", or "text".}

\item{detaillevel}{Packages to be included in the output.
Select "loaded" for all loaded packages, "associated" for all loaded packages + associated packages, or "all" to include base packages and all other packages in the session.}
}
\description{
Generate citation list of all packages in a variety of formats.
}
