
fit <- lm(defect_rate ~ inspected, df)
df$pred <- predict(fit, df)
plot_ly(df, x=~inspected, y=~defect_rate, color=~line, type='scatter', mode='markers') %>%
  add_lines(x=~inspected, y=~pred, name="Trend")
