# Q 1.1
download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", "MapsThatChangedOurWorld_StoryMap_Data.csv")

# Q 1.2
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv", header=TRUE, sep=";")

# Q 1.3
maps$Latitude <- gsub(' N','', maps$Latitude)

# Q 1.4
findIdx <- grepl("W", maps$Longitude)
idx <- which(findIdx == TRUE)

# Q 1.5
maps$Longitude <- gsub('\\s[W|E]','', maps$Longitude)

# Q 1.6
maps$Year <- as.numeric(gsub(' AD','', maps$Year))

# Q 1.7
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)

# Q 1.8
hist(maps$Year)

# Q 1.9
maps$Longitude[idx] <- maps$Longitude[idx] * -1

# Q 1.10
finalResult <- data.frame(Longitude = maps$Longitude, Latitude=maps$Latitude, Year=maps$Year)