ecomodLibrary = function( ... ) {
  #\\ wrapper to load ecomod libraies from local installation
  #\\ or download/install and then load if missing

  require(devtools)

  gref = ecomodLibraryList()
  pkgsLoaded = .packages()
  pkgsInstalled = .packages(all.available = TRUE)

  notinEcomod = setdiff( c(...), gref$libname )
  if (length( notinEcomod) > 0 ) {
    print( "The following are not part of ecomod ... " )
    print( notinEcomod )
  }

  found = intersect( pkgsInstalled, c(...) )
  if (length(found) > 0 ) {
    for ( pkg in found ) {
      if ( pkg %in% pkgsLoaded ) {
        message("Reloading installed ", pkg )
        detach( paste("package", pkg, sep=":"))
      }
      require( pkg, character.only = TRUE )
    }
  }

  notfound = setdiff( c( ... ), pkgsInstalled )
  if (length(notfound) > 0) {
    print( "Missing some ecomod dependencies...")
    n = readline(prompt="Install them? (y/n): ")
    if ( tolower(n) %in% c("y", "yes") ) {
      if ( ! "devtools" %in% pkgsInstalled ) install.packages( "devtools", dependencies=TRUE )
      for ( nf in notfound ) {
        oo = which( gref$libname == nf )
        if (length(oo)==1) {
          try( install_github( gref$githubLoc[oo] ) )
          pkg = gref$libname[oo]
          if ( pkg %in% pkgsLoaded ) {
            message("Reloading installed ", pkg )
            detach( paste("package", pkg, sep=":"))
          }
          require( pkg, character.only = TRUE )
        }
      }
    }
  }
  return( c(...) )
}



