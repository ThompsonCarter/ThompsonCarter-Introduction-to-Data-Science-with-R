sales <- sales %>%
  mutate(
    order_value = unit_price * quantity,
    month       = lubridate::floor_date(order_date, "month")
  )

basic <- sales %>%
  summarize(
    mean_value   = mean(order_value),
    median_value = median(order_value),
    sd_value     = sd(order_value),
    iqr_value    = IQR(order_value)
  )

region_rev <- sales %>%
  group_by(region) %>%
  summarize(
    orders = n(),
    revenue = sum(order_value)
  ) %>%
  mutate(pct_of_total = scales::percent(revenue / sum(revenue))) %>%
  arrange(desc(revenue))

monthly_hi <- sales %>%
  group_by(month) %>%
  filter(order_value > quantile(order_value, 0.95)) %>%
  summarize(n_hi = n())