ggplot(df, aes(inspected, defect_rate)) +
  geom_point() +
  theme_minimal()

ggplot(df, aes(inspected, defect_rate)) +
  geom_point() +
  theme_bw()

+ theme(
    plot.title = element_text(size = 16, face = "bold"),
    axis.title = element_text(size = 14),
    legend.position = "bottom"
  )