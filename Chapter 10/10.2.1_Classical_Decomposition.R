orders_ts <- ts(orders$orders, frequency = 7)
decomp <- decompose(orders_ts, type = "multiplicative")
plot(decomp)