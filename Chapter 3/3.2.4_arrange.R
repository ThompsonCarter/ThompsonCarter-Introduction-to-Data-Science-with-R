top5 <- orders %>%
  arrange(desc(amount)) %>%
  slice(1:5)