
output$interactive_scatter <- renderPlotly({
  plot_ly(df_filtered(), x=~inspected, y=~defect_rate, color=~line, type='scatter')
})

output$summary_tbl <- renderTable({
  df_filtered() %>%
    summarize(mean_rate = mean(defect_rate), max_rate = max(defect_rate))
})
