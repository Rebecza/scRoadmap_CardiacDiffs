# Install/load necessary libraries and set working directory to path of .rds file
install.packages("BiocManager")
BiocManager::install("iSEE")

library(iSEE)
library(SingleCellExperiment)

# Load in the rds file which contains the S4 class object of single cell data ready for loading and viewing on iSEE
roadmap_object <- readRDS("scRoadmap_CMDiff_ShinyApp.rds")

# Run iSEE using the formatted rds file
iSEE(roadmap_object)
