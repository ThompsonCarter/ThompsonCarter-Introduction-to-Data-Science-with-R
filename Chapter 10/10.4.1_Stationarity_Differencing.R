library(tseries)
adf.test(orders_ts)

orders_diff <- diff(orders_ts, differences = 1)
forecast::ggAcf(orders_diff)
forecast::ggPacf(orders_diff)