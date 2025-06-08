
library(pROC)
roc_obj <- roc(df$defect_flag, df$prob)
plot(roc_obj)
auc(roc_obj)
