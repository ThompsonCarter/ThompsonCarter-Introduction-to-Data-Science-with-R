con <- dbConnect(RPostgres::Postgres(), dbname = "shop", user = "dash_user", password = "pwd", host = "host", port = 5432)
orders <- tbl(con, "orders") %>%
  filter(order_date >= Sys.Date() - 30) %>%
  mutate(hour = lubridate::hour(order_date)) %>%
  group_by(hour) %>%
  summarise(revenue = sum(amount)) %>%
  collect()
ggplot2::ggplot(orders, aes(x = hour, y = revenue)) + ggplot2::geom_line()
dbDisconnect(con)