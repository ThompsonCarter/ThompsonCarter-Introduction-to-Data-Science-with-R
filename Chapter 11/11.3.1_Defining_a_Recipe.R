rec <- recipe(defect_flag ~ inspected + machine_age + operator_experience, data = train) %>%
  step_impute_median(all_numeric(), -all_outcomes()) %>%
  step_normalize(all_numeric(), -all_outcomes()) %>%
  step_dummy(all_nominal(), -all_outcomes())