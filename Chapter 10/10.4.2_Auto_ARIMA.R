auto_fit <- auto.arima(orders_ts, seasonal = TRUE,
                       stepwise = FALSE, approximation = FALSE)
summary(auto_fit)