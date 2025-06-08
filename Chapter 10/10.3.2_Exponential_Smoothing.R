library(forecast)
ets_fit <- ets(orders_ts)
autoplot(forecast(ets_fit, h = 30))