ecomodLibraryInstall = function() {
  pkgsInstalled = .packages(all.available = TRUE)
  if ( ! "devtools" %in% pkgsInstalled ) install.packages( "devtools", dependencies=TRUE )
  require(devtools)

  gref = ecomodLibraryList()
  for ( pkg in gref$githubLoc ) {
    try( install_github( gref$githubLoc[oo] ) )
  }
}


