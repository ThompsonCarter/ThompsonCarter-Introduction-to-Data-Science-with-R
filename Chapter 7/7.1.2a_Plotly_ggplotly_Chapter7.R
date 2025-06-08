
library(ggplot2)
p <- ggplot(df, aes(inspected, defect_rate, color = line)) +
  geom_point() +
  geom_smooth(se = FALSE)
ggplotly(p)
