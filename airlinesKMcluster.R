pkgs<-c("factoextra","NbClust","readxl")
#install.packages(pkgs)
library(factoextra)
library(NbClust)
library(readxl)
library(cluster)
library(fpc)
air<- read_excel(file.choose())
air<- scale(air)
View(air)
fviz_nbclust(air, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)+
  labs(subtitle = "Elbow method") 
set.seed(155)
kmResults<-kmeans(air,4,nstart=35)
plotcluster(air,kmResults$cluster)
print(kmResults)
 