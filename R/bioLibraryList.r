
bioLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "bio.base", "PopulationEcologyDivision/bio.base"),
    cbind( "bio.bathymetry", "PopulationEcologyDivision/bio.bathymetry"),
    cbind( "bio.coastline", "PopulationEcologyDivision/bio.coastline"),
    cbind( "bio.polygons", "PopulationEcologyDivision/bio.polygons"),
    cbind( "bio.spacetime", "PopulationEcologyDivision/bio.spacetime"),
    cbind( "bio.substrate", "PopulationEcologyDivision/bio.substrate"),
    cbind( "bio.taxonomy", "PopulationEcologyDivision/bio.taxonomy"),
    cbind( "bio.temperature", "PopulationEcologyDivision/bio.temperature"),
    cbind( "bio.utilities", "PopulationEcologyDivision/bio.utilities")
    # cbind( "groundfish", "jae0/groundfish"),
    # cbind( "netmensuration", "jae0/netmensuration"),
    # cbind( "snowcrab", "jae0/snowcrab")
  ), stringsAsFactors=FALSE)

  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


