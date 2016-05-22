	RLibrary = function( ... ) {
	  # used to load libraries conveniently
		pkgs = rownames(installed.packages())
    found = intersect( pkgs, c(...) )
    if (length(found) > 0 ) {
      for ( l in found ) require( l, character.only=T )
    }
    notfound = setdiff( c( ... ), pkgs )
    if (length(notfound) > 0) {
      print( "Missing some dependencies...")
      n = readline(prompt="Install them? (y/n): ")
      if ( tolower(n) %in% c("y", "yes") ) {
        for ( nf in notfound ) try( install.packages( nf, dependencies=TRUE ) )
      }
    }
    extDeps = intersect( c(...), c("rjags", "rgdal") )
    if ( length(extDeps) > 0 ) {
      print( "External dependencies exist. Install them first:" )
      print( extDeps )
    }
    if ( "INLA" %in% c(...) ) try( install.packages("INLA", repos="https://www.math.ntnu.no/inla/R/stable") )

	  return( c(...) )
  }

