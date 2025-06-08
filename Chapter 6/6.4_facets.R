ggplot(df, aes(inspected, defect_rate)) +
  geom_point() +
  facet_wrap(~ line)

ggplot(df, aes(inspected, defect_rate)) +
  geom_point() +
  facet_grid(line ~ .)