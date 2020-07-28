
get_system_info <- function(format = "list"){
  #sysinf <- as.data.frame(Sys.info())
  #memorysize <- memory.size()

  sessioninfo <- sessionInfo()

  systeminfo <- list("R Version" = paste(sessioninfo[["R.version"]][["version.string"]],
                                               sessioninfo[["R.version"]][["nickname"]]),
                           "System Version" = sessioninfo[["running"]],
                           "Number of Cores" = parallel::detectCores())

  return(systeminfo)
}
