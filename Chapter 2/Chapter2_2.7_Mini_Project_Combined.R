ops <- read_csv("warehouse_ops.csv")
glimpse(ops)
ops$errors[is.na(ops$errors)] <- 0

library(dplyr)
summary_tbl <- ops %>%
  group_by(shift) %>%
  summarize(
    total_picked = sum(items_picked, na.rm = TRUE),
    avg_errors   = mean(errors, na.rm = TRUE)
  )
print(summary_tbl)

# Bonus base R
summary2 <- aggregate(
  cbind(items_picked, errors) ~ shift,
  data = ops,
  FUN = function(x) c(sum = sum(x), mean = mean(x))
)