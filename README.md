# bio.base

Utilities to help develop and/or use bio.* tools.

```
# to enable inter-operability with github
require( devtools ) # or install.packages( "devtools", dependencies=TRUE )

# this is to bootstrap the bio.* suite of tools
install_github( "AtlanticR/bio.base" ) 

# to use some of the functionality:
require( bio.base ) # this should ideally be placed into your .Rprofile

# once the above is loaded, you can load standard R libraries with:
RLibrary( "mgcv", "sp", "nlme" ) 

# to load other bio.* related packages from github: 
bioLibrary ( "bio.base", "bio.snowcrab" )   

```

#### List of currently available AtlanticR/bio.* packages on github:
```
bioLibraryList()
```

The above list is hard coded into the function. If you have a project to add to AtlanticR/bio.*, it would have to be updated in this file and below.


The currently available list of packages that make up AtlanticR/bio.* include:

  * bio.base <https::/github.com/AtlanticR/bio.base> 
  * bio.bathymetry <https::/github.com/AtlanticR/bio.bathymetry> 
  * bio.coastline <https::/github.com/AtlanticR/bio.coastline> 
  * bio.polygons <https::/github.com/AtlanticR/bio.polygons>  
  * bio.utilities <https::/github.com/AtlanticR/bio.utilities> 

So, to install all available AtlanticR/bio.* packages on github, you can simply run the following:
```
bioLibraryInstall()
```


To set up the environment, modify your Rprofile to include:

```
  # start initialization of AtlanticR/bio.* related functions
	bio.workdirectory = file.path( homedir, "tmp" )		 ### replace with correct path
	bio.directory = file.path( homedir, "bio" )   ### replace with correct path
	bio.datadirectory = file.path( homedir, "bio.data" )   ### replace with correct path
	
  pkgsInstalled = .packages(all.available = TRUE)
  if (!"bio.base" %in% pkgsInstalled ) {
    if (!"devtools" %in% pkgsInstalled ) install.packages("devtools", dependencies=TRUE, ask=FALSE)
    require( devtools)
    install_github( "AtlanticR/bio.base")
  }
  require( bio.base )

```


This project preserves some of the original functionality of ecomod to source structured directories, 
except the default is now to source the directory: AtlanticR/*/R/ rather than ecomod/*/src/_Rfunctions/ . 

```
# loadfunctions will now look for the subdirectory "R" rather than "_Rfunctions" : 

loadfunctions("bio.snowcrab")  # "{bio.directory}/*/R"
loadfunctions("bio.snowcrab", alternate.directory="~/ecomod")  # "~/ecomod/*/R/*"
```


#### Useful links:

To make your own package, look at the structure of the bio.base package. It is the mininimal set required for creating a package.

Conventions: naming of your package -- library name exists in the same namespace as regular R libraries and so you need to be careful about name conflicts. We suggest using bio.XXX just to be consistent. 

#### Details on expected directory structure to interoperate with devtools::install_github() 

  * http://r-pkgs.had.co.nz/package.html
  * http://r-pkgs.had.co.nz/description.html 

#### Other ways of installing devtools:

  * https://github.com/hadley/devtools




