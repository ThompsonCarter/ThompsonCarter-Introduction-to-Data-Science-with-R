library(cluster)
sil <- silhouette(k4$cluster, dist(sensor_data))
mean(sil[,3])  # average silhouette width
plot(sil)

