temps <- read_csv("temps.csv")
hot_days <- temps %>%
  filter(temp > 30)

selected_cities <- temps %>%
  filter(city %in% c("City1", "City2"))