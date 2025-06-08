set.seed(42)
k4 <- kmeans(sensor_data, centers = 4, nstart = 25)

table(k4$cluster)

pca <- prcomp(sensor_data)
pca_df <- as.data.frame(pca$x[,1:2])
pca_df$cluster <- factor(k4$cluster)

ggplot(pca_df, aes(PC1, PC2, color = cluster)) +
  geom_point(alpha = 0.7, size = 2) +
  labs(title = "k-Means Clusters on First 2 PCs")

wss <- sapply(1:10, function(k) {
  kmeans(sensor_data, centers=k, nstart=10)$tot.withinss
})
qplot(1:10, wss, geom="line") + labs(x="k", y="Total Within-Cluster SS")

