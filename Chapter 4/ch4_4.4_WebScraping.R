library(rvest)
page <- read_html("https://example.com/pricelist")
table <- page %>%
  html_element("table#prices") %>%
  html_table()
titles <- page %>%
  html_elements(".product-name") %>%
  html_text2()