temps_summary <- temps %>%
  group_by(city) %>%
  summarize(
    avg_temp = mean(temp),
    min_temp = min(temp),
    max_temp = max(temp)
  )