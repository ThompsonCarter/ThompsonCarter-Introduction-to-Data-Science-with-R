wf_rf <- workflow() %>%
  add_model(rf_mod) %>%
  add_recipe(rec)