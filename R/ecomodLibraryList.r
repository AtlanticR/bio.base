
ecomodLibraryList = function() {

  elibs = data.frame( rbind(
    cbind( "ecomodUtils", "jae0/ecomodUtils"),
    cbind( "snowcrab", "jae0/snowcrab"),
    cbind( "groundfish", "jae0/groundfish")
  ), stringsAsFactors=FALSE)

  names(elibs) = c( "libname", "githubLoc" )
  return(elibs)
}


