best_rf <- select_best(rf_tune, "roc_auc")
final_wf <- finalize_workflow(wf_rf, best_rf)
final_fit <- fit(final_wf, data = train)

preds <- predict(final_fit, test, type = "prob") %>%
  bind_cols(predict(final_fit, test)) %>%
  bind_cols(test %>% select(defect_flag))

roc_auc(preds, truth = defect_flag, .pred_1)