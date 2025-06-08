sales %>%
  mutate(order_value = unit_price * quantity) %>%
  summarise(
    mean_value   = mean(order_value),
    median_value = median(order_value),
    sd_value     = sd(order_value),
    min_value    = min(order_value),
    max_value    = max(order_value)
  )