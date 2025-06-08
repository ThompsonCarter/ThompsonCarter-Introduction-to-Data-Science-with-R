orders_selected <- orders %>%
  select(customer, amount, ends_with("_id"))