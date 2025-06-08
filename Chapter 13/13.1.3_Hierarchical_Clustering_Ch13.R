dist_mat <- dist(sensor_data, method="euclidean")

hc <- hclust(dist_mat, method="ward.D2")
plot(hc, labels=FALSE, hang=-1, main="Hierarchical Clustering Dendrogram")

clusters_hc <- cutree(hc, k = 4)
table(clusters_hc)

table(k4$cluster, clusters_hc)

pca_df$hc_cluster <- factor(clusters_hc)
ggplot(pca_df, aes(PC1, PC2, color = hc_cluster)) +
  geom_point() + labs(title="Hierarchical Clusters on PCs")

