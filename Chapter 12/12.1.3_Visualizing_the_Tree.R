library(rpart.plot)
rpart.plot(tree_mod, type = 2, extra = 104,
           fallen.leaves = TRUE, main = "Decision Tree for Defect Flag")