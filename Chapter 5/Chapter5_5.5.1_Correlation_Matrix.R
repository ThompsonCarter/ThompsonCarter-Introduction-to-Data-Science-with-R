num_vars <- clinic %>%
  select_where(is.numeric)
cor(num_vars, use = "pairwise.complete.obs")