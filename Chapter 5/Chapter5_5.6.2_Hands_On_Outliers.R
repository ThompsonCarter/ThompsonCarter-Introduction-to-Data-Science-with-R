sales %>%
  mutate(order_value = unit_price * quantity) %>%
  filter(order_value > upper | order_value < lower) %>%
  arrange(desc(order_value)) %>%
  head()