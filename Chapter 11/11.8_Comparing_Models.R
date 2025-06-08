res <- bind_rows(
  rf_tune %>% collect_metrics() %>% mutate(model = "rf"),
  svm_tune %>% collect_metrics() %>% mutate(model = "svm")
)
ggplot(res, aes(mtry, mean, color = model)) + geom_line()