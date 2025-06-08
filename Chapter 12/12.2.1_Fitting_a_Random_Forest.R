library(ranger)

rf_mod <- ranger(
  formula   = defect_flag ~ inspected + machine_age + operator_experience,
  data      = df,
  num.trees = 500,
  mtry      = 2,
  importance = "impurity"
)