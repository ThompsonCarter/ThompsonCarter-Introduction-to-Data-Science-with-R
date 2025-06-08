rf_bayes <- tune_bayes(
  wf_rf,
  resamples = folds,
  initial   = grid,
  iter      = 20,
  metrics   = metric_set(roc_auc)
)