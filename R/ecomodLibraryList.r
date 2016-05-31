
ecomodLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "bio.base", "jae0/bio.base"),
    cbind( "bio.coastline", "jae0/bio.coastline"),
    cbind( "bio.polygons", "jae0/bio.polygons"),
    cbind( "bio.substrate", "jae0/bio.substrate"),
    cbind( "bio.utilities", "jae0/bio.utilities"),
    cbind( "groundfish", "jae0/groundfish"),
    cbind( "netmensuration", "jae0/netmensuration"),
    cbind( "snowcrab", "jae0/snowcrab")
  ), stringsAsFactors=FALSE)

  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


