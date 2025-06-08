df <- df %>% mutate(line = rep(c("A","B","C","A","B","C","A"), length.out = n()))

ggplot(df, aes(inspected, defect_rate, color = line)) +
  geom_point(size = 3)

ggplot(df, aes(inspected, defect_rate, size = defects, shape = line)) +
  geom_point(alpha = 0.7)

ggplot(df, aes(inspected, defect_rate, color = line)) +
  geom_point() +
  scale_color_manual(values = c("A" = "blue", "B" = "green", "C" = "red"))