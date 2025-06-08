orders <- tibble(
  region = c("North","South","East","West"),
  revenue = c(25000, 32000, 28000, 30000)
)

ggplot(orders, aes(x = region, y = revenue)) +
  geom_col()

sales <- read_csv("sales.csv")

avg_rev <- sales %>%
  group_by(region) %>%
  summarize(avg_revenue = mean(revenue))

ggplot(avg_rev, aes(region, avg_revenue)) +
  geom_col()

ggplot(sales, aes(region)) +
  geom_bar()