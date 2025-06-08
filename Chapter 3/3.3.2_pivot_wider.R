temps_long <- tibble(
  city = c("X","X","Y","Y"),
  month = c("Jan","Feb","Jan","Feb"),
  temp = c(5,7,10,12)
)

temps_wide <- temps_long %>%
  pivot_wider(
    names_from = month,
    values_from = temp
  )