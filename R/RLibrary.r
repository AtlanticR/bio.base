RLibrary = function( force=FALSE, ... ) {
  #\\ used to (re)load libraries conveniently

  ll = unique(c(...))

  pkgs = .packages(all.available = TRUE)
  pkgsLoaded = .packages()

  if (force) {
    found = intersect( pkgs, ll )
    if (length(found) > 0 ) {
      for ( pkg in found ) {
        if ( pkg %in% pkgsLoaded ) {
          if ( pkg %in% c("mgcv", "ff", "rgdal", "sp") ){
            message( paste( "Not reloading due to complex dependencies:", pkg ) )
            next()
          }
          message("Reloading installed ", pkg )
          try( detach( paste("package", pkg, sep=":"), unload=TRUE, character.only=TRUE, force=TRUE ), silent=TRUE )
        }
        try ( require( pkg, character.only = TRUE ) )
      }
    }
  }

  notfound = setdiff( ll, pkgs )
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

  return( ll )
}

