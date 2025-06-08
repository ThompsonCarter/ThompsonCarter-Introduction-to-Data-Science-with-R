monthly <- orders %>%
  mutate(month = format(date, "%Y-%m")) %>%
  group_by(month) %>%
  summarize(
    total_rev = sum(amount, na.rm = TRUE),
    avg_rev   = mean(amount, na.rm = TRUE),
    order_ct  = n()
  )