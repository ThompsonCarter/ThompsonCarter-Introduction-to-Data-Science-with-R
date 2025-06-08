library(dplyr)
tbl_orders <- tbl(con, "orders")
big_q4 <- tbl_orders %>%
  filter(order_date >= "2025-10-01", order_date <  "2026-01-01", amount > 1000) %>%
  select(order_id, customer_id, amount)