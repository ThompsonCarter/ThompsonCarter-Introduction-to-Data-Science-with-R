library(httr)
library(jsonlite)
url  <- "https://api.exchangerate.host/latest?base=USD"
resp <- GET(url)
rates <- fromJSON(content(resp, "text", encoding = "UTF-8"))$rates
head(rates)