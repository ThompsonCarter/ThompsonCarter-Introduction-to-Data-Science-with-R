library(dplyr)
measurements %>%
  group_by(gender) %>%
  summarize(avg_weight = mean(weight, na.rm = TRUE))