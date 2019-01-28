data(ruspini, package="cluster")
#' Shuffle rows
ruspini <- ruspini[sample(1:nrow(ruspini)),]
plot(ruspini)

#Scale each column in the data to zero mean and unit standard deviation (z-scores).
ruspini_scaled <- scale(ruspini)
plot(ruspini_scaled)

#The K-means algorithm is used on the data below. k is set to four because it seems like there are four clusters when looking at the scatter plot for the previous data.
ruspiniKM = kmeans(ruspini_scaled, centers=4, nstart=10)
colors = c("red", "green", "orange", "blue","black")
#plot(ruspini[,1:2], pch = 19, col = colors[ruspiniKM$cluster])


plot(ruspini_scaled, col= colors[ruspiniKM$cluster])
points(ruspiniKM$centers, pch=3, cex=2) # this adds the centroids
text(ruspiniKM$centers, labels=1:4, pos=2) # this adds the cluster ID

ruspiniKM