library(tibble)
classic_df <- data.frame(
  a = 1:5,
  b = letters[1:5],
  c = as.Date("2025-01-01") + 0:4
)
tbl <- as_tibble(classic_df)
print(tbl)