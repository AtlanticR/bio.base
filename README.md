# bio.base

Utilities to help develop and/or use bio.* tools.

```
# to enable inter-operability with github
require( devtools ) # or install.packages( "devtools", dependencies=TRUE )

# this is to bootstrap the bio.* suite of tools
install_github( "Beothuk/bio.base" ) 

# to use some of the functionality:
require( bio.base ) # this should ideally be placed into your .Rprofile

# once the above is loaded, you can load standard R libraries with:
RLibrary( "mgcv", "sp", "nlme" ) 

# to load other bio.* related packages from github: 
bioLibrary ( "bio.base", "snowcrab" )   

```

#### List of currently available Beothuk/bio.* packages on github:
```
bioLibraryList()
```

The above list is hard coded into the function. If you have a project to add to Beothuk/bio.*, it would have to be updated in this file and below.


The currently available list of packages that make up Beothuk/bio.* include:

  * bio.base <https::/github.com/Beothuk/bio.base> (formerly ecomod/_ecomodSetup) 
  * bio.utilities <https::/github.com/Beothuk/bio.utilities> (formerly ecomod/utility) 
  * bio.utilities <https::/github.com/Beothuk/bio.polygons> (formerly ecomod/polygons) 
  * bio.utilities <https::/github.com/Beothuk/bio.coastline> (formerly ecomod/coastline) 
  * bio.utilities <https::/github.com/Beothuk/bio.bathymetry> (formerly ecomod/bathymetry) 

So, to install all available Beothuk/bio.* packages on github, you can simply run the following:
```
bioLibraryInstall()
```


This project preserves some of the original functionality of ecomod to source structured directories, 
except the default is now to source the directory: Beothuk/*/R/ rather than ecomod/*/src/_Rfunctions/ . 

```
# loadfunctions (v0 of ecomod) still operates properly for 
# alternate locations (here the original ecomod was moved to ecomod0) 

loadfunctions("snowcrab", alternate.directory="~/ecomod0")  # "/home/jae/ecomod0/snowcrab/src/_Rfunctions/"
loadfunctions("snowcrab")  # "/home/jae/ecomod/snowcrab/R"
```


To set up the environment, modify your Rprofile to include:

```
  # start initialization of Beothuk/bio.* related functions
	bio.workdirectory = file.path( homedir, "tmp" )		 ### replace with correct path
	bio.directory = file.path( homedir, "bio" )   ### replace with correct path
	bio.datadirectory = file.path( homedir, "bio.data" )   ### replace with correct path
	
  pkgsInstalled = .packages(all.available = TRUE)
  if (!"bio.base" %in% pkgsInstalled ) {
    if (!"devtools" %in% pkgsInstalled ) install.packages("devtools", dependencies=TRUE, ask=FALSE)
    require( devtools)
    install_github( "Beothuk/bio.base")
  }
  require( bio.base )

```


#### Useful links:

To make your own package, look at the structure of the bio.base package. It is the mininimal set required for creating a package.

Conventions: naming of your package -- library name exists in the same namespace as regular R libraries and so you need to be careful about name conflicts. We suggest using bio.XXX just to be consistent. 

#### Details on expected directory structure to interoperate with devtools::install_github() 

  * http://r-pkgs.had.co.nz/package.html
  * http://r-pkgs.had.co.nz/description.html 

#### Other ways of installing devtools:

  * https://github.com/hadley/devtools




