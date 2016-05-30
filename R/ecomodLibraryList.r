
ecomodLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "ecomod_base", "jae0/ecomod_base"),
    cbind( "utilities", "jae0/utilities"),
    cbind( "groundfish", "jae0/groundfish"),
    cbind( "netmensuration", "jae0/netmensuration"),
    cbind( "snowcrab", "jae0/snowcrab")
  ), stringsAsFactors=FALSE)

  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


