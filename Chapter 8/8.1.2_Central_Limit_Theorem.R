set.seed(42)
library(ggplot2)
sample_means <- replicate(10000, mean(rexp(30, rate=0.2)))
qplot(sample_means, bins=50) + 
  ggtitle("Sampling Distribution of the Mean (n=30)")