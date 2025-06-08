e <- tsCV(orders_ts, forecastfunction = function(y, h) {
             forecast(auto.arima(y), h = h)
           }, h = 7)

sqrt(mean(e^2, na.rm = TRUE))