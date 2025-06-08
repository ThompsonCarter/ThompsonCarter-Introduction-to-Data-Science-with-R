
df$resid  <- residuals(model1)
df$pred   <- fitted(model1)

ggplot(df, aes(x = pred, y = resid)) +
  geom_point() +
  geom_hline(yintercept = 0, linetype="dashed")
