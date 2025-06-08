stl_fit <- stl(orders_ts, s.window = "periodic")
autoplot(stl_fit)