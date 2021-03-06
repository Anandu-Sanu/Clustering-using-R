#pkgs <- c("tidyverse","cluster","dendextend")
#install.packages(pkgs)
library(factoextra)
library(NbClust)
library(readxl)
library(cluster)
library(fpc)
air<- read_excel(file.choose())
airdata <- na.omit(air)
airdata <- scale(airdata)
View (airdata)
distance <- dist(airdata, method = "euclidean")
Hlust <- hclust(distance,method = "ward.D2")
cutree(Hlust,h=89)
plot(Hlust)
abline(h=89, col="red")
abline(h=90, col="red")
print(Hlust)  
