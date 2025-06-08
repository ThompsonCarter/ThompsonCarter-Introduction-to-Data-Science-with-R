install.packages("skimr")
library(skimr)
sales %>%
  mutate(order_value = unit_price * quantity) %>%
  skim(order_value, region)