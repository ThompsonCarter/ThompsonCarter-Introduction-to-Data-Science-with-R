library(TTR)
orders$ma_7 <- SMA(orders$orders, n = 7)

ggplot(orders, aes(date)) +
  geom_line(aes(y = orders), alpha = 0.4) +
  geom_line(aes(y = ma_7), color = "red")