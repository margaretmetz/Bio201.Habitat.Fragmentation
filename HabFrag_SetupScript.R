# File to run at top of first module to load all the required things... 

# function to first check for required packages, then load, or install and load

load.install.packages = function(pkgs){ # helper function to load packages, installing if needed
  for (p in pkgs){
    if (!p %in% installed.packages()[,'Package']){
      install.packages(p, dep=T, repos='http://cran.r-project.org')
    }
    require(p, character.only=T)
  }
}


load.install.packages(c("tidyverse", "ggplot2", "rmarkdown"))