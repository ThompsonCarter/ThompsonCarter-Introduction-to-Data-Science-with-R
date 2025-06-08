imp <- as.data.frame(rf_mod$variable.importance)
imp$feature <- rownames(imp)
library(ggplot2)

ggplot(imp, aes(reorder(feature, importance), importance)) +
  geom_col(fill="steelblue") +
  coord_flip() +
  labs(title="Random Forest Feature Importance", x="Feature", y="Importance")