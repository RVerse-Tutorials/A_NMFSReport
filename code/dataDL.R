#' ---
#' title: 'The best report ever'
#' author: 'Me, Myself, and I'
#' purpose: Download data
#' start date: 2022-07-22
#' date modified: 2022-07-22        # CHANGE
#' Notes:                             # CHANGE
#' ---

# Example Data

# https://www.fisheries.noaa.gov/alaska/commercial-fishing/alaska-groundfish-bottom-trawl-survey-data

# Download EBS
# download.file(url = "https://www.afsc.noaa.gov/RACE/groundfish/survey_data/downloads/ebs2017_2018.zip", 
#               destfile=paste0("./data/ebs2017_2018.zip") )
# 
# 
# zip::unzip(zipfile = paste0("./data/ebs2017_2018.zip"), 
#              overwrite = T,
#              exdir = paste0("./data/"))
