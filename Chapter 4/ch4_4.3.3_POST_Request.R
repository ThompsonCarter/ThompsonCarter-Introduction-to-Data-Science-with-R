body <- list(start = "2025-06-01", end = "2025-06-07", symbol = "AAPL")
resp <- POST("https://api.finance.example/price", body = body, encode = "json")