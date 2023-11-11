# Q 1.1
download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", "MapsThatChangedOurWorld_StoryMap_Data.csv")

# Q 1.2
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv", header=TRUE, sep=";")

# Q 1.3
maps$Latitude <- gsub(' N','', maps$Latitude)

#Q 1.4
findIdx <- grepl("W", maps$Longitude)
indx <- which(findIdx == TRUE)

#Q 1.5
maps$Longitude <- gsub(' W','', maps$Longitude)
maps$Longitude <- gsub(' E','', maps$Longitude)