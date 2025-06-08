rf_params <- parameters(rf_mod) %>%
  update(mtry = mtry(c(1, 5)), trees = trees(c(100, 1000)))
grid <- grid_regular(rf_params, levels = 5)

set.seed(789)
rf_tune <- tune_grid(
  wf_rf, 
  resamples = folds,
  grid      = grid,
  metrics   = metric_set(roc_auc)
)