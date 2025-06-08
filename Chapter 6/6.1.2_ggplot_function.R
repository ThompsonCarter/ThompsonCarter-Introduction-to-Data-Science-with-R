library(ggplot2)
ggplot(data = df, aes(x = x_var, y = y_var))
ggplot(df, aes(x = x_var, y = y_var)) +
  geom_point()