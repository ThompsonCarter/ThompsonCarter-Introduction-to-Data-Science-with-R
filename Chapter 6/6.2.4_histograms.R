ages <- tibble(age = c(23,45,52,37,61,29,48,54,33,40,27,58,62,49,38))

ggplot(ages, aes(age)) +
  geom_histogram(binwidth = 5)