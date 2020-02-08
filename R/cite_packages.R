#' @title Generate citation list of all packages in a variety of formats.
#'
#' @param packages (Optional) Vector of package names. If blank, the package will look to loaded packages to be included in the citation list.
#' @param outfile Path and filename where the citation file should be written.
#' @param format Output format of the citation file. Select from "bibtex", "latex", "html", or "text".
#' @param detaillevel Packages to be included in the output.
#' Select "loaded" for all loaded packages, "associated" for all loaded packages + associated packages, or "all" to include base packages and all other packages in the session.
#' @export cite_packages

cite_packages <- function(packages = c(), outfile = NULL, format = "bibtex", detaillevel = "loaded"){
  ## Capture current session information
  sessioninfo <- sessionInfo()

  if (length(packages) > 0){
    ## Do nothing as input package list will be used
  } else{
    if (detaillevel == "loaded"){
      ## Get a list of all the packages that have been loaded
      packages <- names(sessioninfo$otherPkgs)

    } else if (detaillevel == "associated"){
      ## Get a list of all the packages that have been loaded + all associated packages
      packages <- unique(c(names(sessioninfo$otherPkgs),
                           names(sessioninfo$loadedOnly)))

    } else if (detaillevel == "all"){
      ## Get a list of all the packages that have been loaded + all associated packages + base packages
      packages <- unique(c(names(sessioninfo$basePkgs),
                           names(sessioninfo$otherPkgs),
                           names(sessioninfo$loadedOnly)))
    }
  }

  ## Remove `sourcerr` from packages list
  packages <- packages[which(packages != "sourcerr")]

  if (!is.null(outfile)){
    ## Start capturing print output
    capture.output(
      for (i in 1:length(packages)){
        package <- packages[i]
        citation <- citation(package = package)

        if (format == "text"){
          print(citation, style = "text")
        } else if (format == "bibtex"){
          print(citation, style = "Bibtex")
        } else if (format == "html"){
          print(citation, style = "html")
        } else if (format == "latex"){
          print(citation, style = "latex")
        }
      },
      file = outfile) ## Write file to outfile parameter
  } else {
    for (i in 1:length(packages)){
      package <- packages[i]
      citation <- citation(package = package)

      if (format == "text"){
        print(citation, style = "text")
      } else if (format == "bibtex"){
        print(citation, style = "Bibtex")
      } else if (format == "html"){
        print(citation, style = "html")
      } else if (format == "latex"){
        print(citation, style = "latex")
      }
      cat("\n")
    }
  }

}
