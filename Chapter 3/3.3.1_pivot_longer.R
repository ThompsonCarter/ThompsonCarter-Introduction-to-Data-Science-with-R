sales_wide <- tibble(
  product = c("A","B"),
  Q1 = c(10,15),
  Q2 = c(12,18),
  Q3 = c(9,20),
  Q4 = c(14,22)
)

sales_long <- sales_wide %>%
  pivot_longer(
    cols = Q1:Q4,
    names_to = "quarter",
    values_to = "sales"
  )