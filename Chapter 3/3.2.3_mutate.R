orders2 <- orders %>%
  mutate(
    tax = amount * 0.10,
    amount_f = temp * 9/5 + 32
  ) %>%
  mutate(total = amount + tax)