tab <- sales %>% select(region, quantity) %>%
  mutate(multi = quantity > 1) %>%
  xtabs(~ region + multi, data = .)
chisq.test(tab)