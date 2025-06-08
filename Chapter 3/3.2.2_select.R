sales <- read_csv("sales.csv")
sales_small <- sales %>%
  select(order_id, date, revenue)