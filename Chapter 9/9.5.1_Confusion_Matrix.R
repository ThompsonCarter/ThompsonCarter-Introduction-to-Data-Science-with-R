
library(caret)
confusionMatrix(factor(df$pred_flag), factor(df$defect_flag))
