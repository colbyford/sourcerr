#' @title Generate citation list of all packages in a variety of formats.
#'
#' @export cite_packages

cite_packages <- function(outfile, format = "bibtex", detaillevel = "loaded"){
  sessioninfo <- sessionInfo()

  if (detaillevel == "loaded"){
    packages <- names(sessioninfo$otherPkgs)
  } else if (detaillevel == "all"){
    packages <- c(names(sessioninfo$basePkgs),
                  names(sessioninfo$otherPkgs),
                  names(sessioninfo$loadedOnly))
  }

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
        print(citation, style = "html")
      }
      print("\n")
    },
    file = outfile)

  # for (i in 1:length(packages)){
  #   package <- packages[i]
  #   citation <- citation(package = package)
  #   if (format == "text"){
  #     bibline <- print(citation, style = "text")
  #   } else if (format == "bibtex"){
  #     bibline <- print(citation, style = "Bibtex")
  #   } else if (format == "html"){
  #     bibline <- print(citation, style = "html")
  #   } else if (format == "latex"){
  #     bibline <- print(citation, style = "html")
  #   }
  #
  #   citationlist[[i]] <- bibline
  #
  # }

  # bibliography = do.call(rbind, citationlist)

}
