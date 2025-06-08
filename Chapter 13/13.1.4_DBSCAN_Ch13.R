install.packages("dbscan")
library(dbscan)

kNNdistplot(sensor_data, k = 5)
abline(h = 1.5, lty=2)

db <- dbscan(sensor_data, eps=1.5, minPts=5)
table(db$cluster)

pca_df$db_cluster <- factor(db$cluster)
ggplot(pca_df, aes(PC1, PC2, color = db_cluster)) +
  geom_point() + labs(title="DBSCAN Clusters (0 = noise)")

