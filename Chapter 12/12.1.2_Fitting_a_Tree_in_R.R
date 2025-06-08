# Load data
library(rpart)
df <- read.csv("data/defect_classification.csv")

# Fit a tree to predict defect_flag (0/1)
tree_mod <- rpart(defect_flag ~ inspected + machine_age + operator_experience,
                  data = df,
                  method = "class",
                  control = rpart.control(cp = 0.01))