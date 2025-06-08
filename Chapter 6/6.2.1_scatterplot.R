df <- tibble(
  inspected   = c(100, 150, 200, 250, 300, 350, 400),
  defects     = c(5, 7, 4, 12, 9, 6, 11)
) %>%
  mutate(defect_rate = defects / inspected)

ggplot(df, aes(x = inspected, y = defect_rate)) +
  geom_point()

ggplot(df, aes(inspected, defect_rate)) +
  geom_point() +
  geom_smooth(method = "loess", se = FALSE)