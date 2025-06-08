
ui <- fluidPage(
  titlePanel("Explore Defect Rates"),
  sidebarLayout(
    sidebarPanel(
      selectInput("line", "Select Line", choices = unique(df$line))
    ),
    mainPanel(
      plotOutput("scatter")
    )
  )
)
