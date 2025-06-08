library(readr); library(dplyr); library(ggplot2); library(lubridate)

orders <- read_csv("orders.csv",
                   col_types = cols(date  = col_date(),
                                    orders = col_double()))

ggplot(orders, aes(date, orders)) +
  geom_line(color = "steelblue") +
  labs(title = "Daily Orders – Raw Time-Series", y = "Orders")