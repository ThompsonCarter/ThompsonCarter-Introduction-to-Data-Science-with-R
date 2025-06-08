
install.packages("shiny")
library(shiny)

ui <- fluidPage(
  titlePanel("Defect Dashboard")
)

server <- function(input, output, session) {
}

shinyApp(ui, server)
