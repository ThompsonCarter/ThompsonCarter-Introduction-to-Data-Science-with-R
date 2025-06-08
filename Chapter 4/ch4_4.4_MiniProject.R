# Assume scraping with proper user-agent and parsing logic
# Append new row to existing CSV
new_data <- tibble::tibble(date = Sys.Date(), aluminium = 2.1, copper = 3.5, steel = 1.8)
existing <- read_csv("commodity_prices.csv")
updated <- bind_rows(existing, new_data)
write_csv(updated, "commodity_prices.csv")
ggplot(updated, aes(x = date, y = aluminium)) + geom_line()