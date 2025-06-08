temps <- temps %>%
  mutate(
    temp_f = temp * 9/5 + 32,
    hot_day = temp > 30
  )