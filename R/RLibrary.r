RLibrary = function( ... ) {
  #\\ used to (re)load libraries conveniently

  pkgs = .packages(all.available = TRUE)
  pkgsLoaded = .packages()

  found = intersect( pkgs, c(...) )
  if (length(found) > 0 ) {
    for ( pkg in found ) {
      if ( pkg %in% pkgsLoaded ) {
        message("Reloading installed ", pkg )
        detach( paste("package", pkg, sep=":"), unload=TRUE, character.only=TRUE, force=TRUE )
      }
      try ( require( pkg, character.only = TRUE ) )
    }
  }

  notfound = setdiff( c( ... ), pkgs )
  if (length(notfound) > 0) {
    print( "Missing some dependencies...")
    n = readline(prompt="Install them? (y/n): ")
    if ( tolower(n) %in% c("y", "yes") ) {
      for ( nf in notfound ) {
        try( install.packages( nf, dependencies=TRUE ) )
        try( require( pkg, character.only = TRUE ) )
      }
    }
  }

  if ( "INLA" %in% notfound ) {
    try( install.packages("INLA", repos="https://www.math.ntnu.no/inla/R/stable") )
    try( require( "INLA", character.only = TRUE ))
  }

  return( c(...) )
}

