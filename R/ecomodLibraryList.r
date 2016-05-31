
ecomodLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "ecomod_base", "jae0/ecomod_base"),
    cbind( "ecomod_coastline", "jae0/ecomod_coastline"),
    cbind( "ecomod_polygons", "jae0/ecomod_polygons"),
    cbind( "ecomod_substrate", "jae0/ecomod_substrate"),
    cbind( "ecomod_utilities", "jae0/ecomod_utilities"),
    cbind( "groundfish", "jae0/groundfish"),
    cbind( "netmensuration", "jae0/netmensuration"),
    cbind( "snowcrab", "jae0/snowcrab")
  ), stringsAsFactors=FALSE)

  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


