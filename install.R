# Helper - Data manipulation
install.packages("dplyr")
install.packages("stringr")
install.packages("sf")

# Helper - Data visualization
install.packages("ggplot2")

# Helper - Data for maps
install.packages("rnaturalearth")
install.packages("rnaturalearthdata")
install.packages("mregions2")

# Helper - Taxon data
install.packages("worrms")

# Retrieve Data Products
install.packages("rerddap")

# Retrieve Biological Occurrence Data
install.packages("pak")
install.packages("devtools")

# Need specifically this version to work with emodnet.wfs
pak::pkg_install("eblondel/ows4R@1b317679e11e2acd106fc58b09a694ff19a6ae79") 
pak::pkg_install("EMODnet/emodnet.wfs@d3c1ad2d40609fc4f64c80fb96bc20ce15d70594", dependencies = FALSE)
