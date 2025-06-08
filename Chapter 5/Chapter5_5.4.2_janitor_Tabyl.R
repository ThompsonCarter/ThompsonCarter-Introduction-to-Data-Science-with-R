install.packages("janitor")
library(janitor)
sales %>%
  tabyl(region, quantity > 1) %>%
  adorn_percentages("row") %>%
  adorn_totals()