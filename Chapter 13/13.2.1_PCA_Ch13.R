pca_res <- prcomp(sensor_data, center=TRUE, scale.=TRUE)
summary(pca_res)

var_explained <- pca_res$sdev^2 / sum(pca_res$sdev^2)
qplot(seq_along(var_explained), var_explained, geom="line") +
  labs(x="Principal Component", y="Proportion Variance", title="Scree Plot")

pca_df <- as.data.frame(pca_res$x)
pca_df$cluster <- factor(k4$cluster)
ggplot(pca_df, aes(PC1, PC2, color=cluster)) +
  geom_point(alpha=0.7)

predict(pca_res, newdata = sensor_data)

