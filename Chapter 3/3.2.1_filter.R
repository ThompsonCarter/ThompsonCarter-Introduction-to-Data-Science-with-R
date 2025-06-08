orders <- read_csv("orders.csv")
big_orders <- orders %>%
  filter(amount > 1000)

important <- orders %>%
  filter(amount > 1000 & country == "USA")