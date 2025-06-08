fc <- forecast(auto_fit, h = 30)
autoplot(fc)

train <- window(orders_ts, end = length(orders_ts) - 30)
test  <- window(orders_ts, start = length(orders_ts) - 29)

fit_train <- auto.arima(train)
fc_test   <- forecast(fit_train, h = 30)

accuracy(fc_test, test)