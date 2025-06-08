
highchart() %>%
  hc_chart(type = "scatter") %>%
  hc_title(text = "Defect Rate vs. Inspections") %>%
  hc_xAxis(title = list(text = "Inspected")) %>%
  hc_yAxis(title = list(text = "Defect Rate")) %>%
  hc_add_series(
    data = df,
    hcaes(x = inspected, y = defect_rate, group = line),
    marker = list(symbol = "circle")
  )
