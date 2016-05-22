
ecomodLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "snowcrab", "jae0/snowcrab"),
    cbind( "ecomodUtility", "jae0/ecomodUtility"),
    cbind( "groundfish", "jae0/groundfish")
  ))
  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


