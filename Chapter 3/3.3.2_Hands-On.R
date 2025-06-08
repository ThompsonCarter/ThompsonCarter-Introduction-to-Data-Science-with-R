temps_wide <- temps %>%
  pivot_wider(
    names_from = month,
    values_from = temp
  )