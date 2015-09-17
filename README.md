

Package initialization
===

```r
# install necessary libraries
install.packages("devtools")
library("devtools")
devtools::install_github("klutometis/roxygen")
library(roxygen2)

# create the package directory
setwd("parent_directory")
create("packagedir")
```

Installation
===

```r
# process documentation
setwd("./packagedir")
document()

# installation
setwd("..")
install("cats")
```