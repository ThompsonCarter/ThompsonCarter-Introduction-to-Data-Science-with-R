time_df <- tibble(
  month = seq.Date(from = as.Date("2025-01-01"), by = "month", length.out = 12),
  defect_rate = c(0.05,0.06,0.055,0.07,0.065,0.06,0.058,0.062,0.066,0.064,0.063,0.061)
)

ggplot(time_df, aes(x = month, y = defect_rate)) +
  geom_line()

visits <- read_csv("visits.csv", col_types = cols(date = col_date()))

monthly_visits <- visits %>%
  mutate(month = floor_date(date, "month")) %>%
  group_by(month) %>%
  summarize(total_visits = sum(visits))

ggplot(monthly_visits, aes(month, total_visits)) +
  geom_line() +
  geom_point()