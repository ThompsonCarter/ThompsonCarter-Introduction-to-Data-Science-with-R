rf_mod <- rand_forest(mode = "classification", trees = 500, mtry = tune()) %>%
  set_engine("ranger", importance = "impurity")