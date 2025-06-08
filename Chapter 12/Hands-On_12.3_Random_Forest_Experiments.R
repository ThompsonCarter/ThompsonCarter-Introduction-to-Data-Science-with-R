# Fit a random forest on df with 300 trees
rf_mod <- ranger(
  formula = defect_flag ~ inspected + machine_age + operator_experience,
  data = df,
  num.trees = 300,
  mtry = 2,
  importance = "impurity"
)

# Check prediction error
rf_mod$prediction.error