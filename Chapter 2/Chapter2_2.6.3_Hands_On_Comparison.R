# Base R
agg1 <- aggregate(visit_duration ~ page, data = visits, FUN = mean)

# Tidyverse
visits %>%
  group_by(page) %>%
  summarize(avg_duration = mean(visit_duration, na.rm = TRUE))