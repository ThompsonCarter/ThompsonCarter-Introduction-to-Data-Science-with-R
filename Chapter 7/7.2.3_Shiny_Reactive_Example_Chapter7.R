
server <- function(input, output) {
  df_filtered <- reactive({
    req(input$line)
    df %>% filter(line == input$line)
  })

  output$scatter <- renderPlot({
    ggplot(df_filtered(), aes(inspected, defect_rate)) +
      geom_point()
  })
}
