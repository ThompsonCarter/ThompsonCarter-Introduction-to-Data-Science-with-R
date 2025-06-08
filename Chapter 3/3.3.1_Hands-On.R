machine_output <- tibble(
  machine = c("M1", "M2"),
  shift1 = c(100, 150),
  shift2 = c(110, 160),
  shift3 = c(90, 140)
)

output_long <- machine_output %>%
  pivot_longer(cols = starts_with("shift"),
               names_to = "shift",
               values_to = "output")