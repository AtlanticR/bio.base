
ecomodLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "ecomodUtils", "jae0/ecomodUtils"),
    cbind( "groundfish", "jae0/groundfish"),
    cbind( "netmensuration", "jae0/netmensuration"),
    cbind( "snowcrab", "jae0/snowcrab")
  ), stringsAsFactors=FALSE)

  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


