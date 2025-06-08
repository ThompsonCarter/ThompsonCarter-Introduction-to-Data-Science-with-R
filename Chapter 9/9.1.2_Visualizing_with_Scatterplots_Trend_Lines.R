
library(ggplot2)
df <- tibble(
  inspected   = c(100,150,200,250,300,350,400,450,500),
  defects     = c(5,7,4,12,9,6,11,8,7)
) %>%
  mutate(defect_rate = defects / inspected)

ggplot(df, aes(x = inspected, y = defect_rate)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE)
