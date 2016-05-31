
ecomodLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "bio.base", "Beothuk/bio.base"),
    cbind( "bio.coastline", "Beothuk/bio.coastline"),
    cbind( "bio.polygons", "Beothuk/bio.polygons"),
    cbind( "bio.substrate", "Beothuk/bio.substrate"),
    cbind( "bio.utilities", "Beothuk/bio.utilities"),
    cbind( "groundfish", "jae0/groundfish"),
    cbind( "netmensuration", "jae0/netmensuration"),
    cbind( "snowcrab", "jae0/snowcrab")
  ), stringsAsFactors=FALSE)

  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


