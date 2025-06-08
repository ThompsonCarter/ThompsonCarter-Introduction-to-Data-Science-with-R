install.packages("corrplot")
library(corrplot)
corrplot(
  cor(num_vars, use = "pairwise.complete.obs"),
  method = "color",
  type   = "upper",
  tl.col = "black",
  addCoef.col = "black",
  number.cex = 0.7
)