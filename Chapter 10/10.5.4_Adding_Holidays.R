holidays <- data_frame(
  holiday = 'promo_day',
  ds = as.Date(c('2025-11-25', '2025-12-15')),
  lower_window = 0,
  upper_window = 1
)
m2 <- prophet(prop_df, holidays = holidays, weekly.seasonality = TRUE)