install.packages("Rtsne")
library(Rtsne)

set.seed(101)
tsne_out <- Rtsne(sensor_data, perplexity = 30)
tsne_df <- data.frame(tsne1 = tsne_out$Y[,1], tsne2 = tsne_out$Y[,2],
                      cluster = factor(k4$cluster))

ggplot(tsne_df, aes(tsne1, tsne2, color=cluster)) +
  geom_point(alpha=0.8) +
  labs(title="t-SNE Visualization of Sensor Data")

