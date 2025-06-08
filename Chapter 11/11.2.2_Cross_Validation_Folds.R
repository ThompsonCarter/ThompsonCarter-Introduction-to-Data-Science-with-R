set.seed(456)
folds <- vfold_cv(train, v = 5, strata = defect_flag)