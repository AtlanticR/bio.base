# ecomodUtils

Utilities to initiate develop and/or use ecomod tools.

```
# to enable inter-operability with github
require( devtools ) # or install.packages( "devtools", dependencies=TRUE )

# this is to bootstrap the ecomod suite of tools
install_github( "jae0/ecomodUtils" ) 

# to use some of the functionality:
require( ecomodUtils ) # this should ideally be placed into your .Rprofile

# to load a standard R library
RLibrary( mgcv )  

# load it or get it from github and then load it 
ecomodLibrary ("snowcrab")   

# For the transition: replace loadfunctions( XXX ) to ecomodLibrary( XXX ) 
# loadfunctions will onto ecomodLibrary until the transition is complete.

# list of currently available ecomod packages on github:
ecomodLibraryList()

# The above list is hard coded into the function. If you have a project to add to ecomod, it would have to be updated in this file and below.

```

This project preserves some of the original functionality of ecomod to source structured directories, for posterity as well shoud people want to retain the previous functionality. You will need to modify the search path by looking within "loadfunctions.r". 


The currently available list of packages that make up ecomod include:

  * ecomodUtils <https::/github.com/jae0/ecomodUtils> (formerly _ecomodSetup) 
  * snowcrab <https::/github.com/jae0/snowcrab>
  * groundfish <https::/github.com/jae0/groundfish> 


#### Useful links:

To make your own package, look at the structure of the ecomodUtils package. It is the mininimal set required for creating a package.

Conventions: naming of your package -- library name exists in the same namespace as regular R libraries and so you need to be careful about name conflicts. I suggest using ecomodXXX just to be consistent. 

#### Details on expected directory structure to interoperate with devtools::install_github() 

  http://r-pkgs.had.co.nz/description.html 

#### Other ways of installing devtools:

  https://github.com/hadley/devtools




