
plot_ly(
  data = df,
  x = ~inspected,
  y = ~defect_rate,
  color = ~line,
  type = 'scatter',
  mode = 'markers'
) %>%
  layout(
    title = "Defect Rate vs. Inspections",
    xaxis = list(title = "Parts Inspected"),
    yaxis = list(title = "Defect Rate")
  )
