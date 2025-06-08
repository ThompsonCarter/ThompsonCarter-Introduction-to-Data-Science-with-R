
ui <- fluidPage(
  titlePanel("Manufacturing Dashboard"),
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("lines", "Lines", unique(df$line), selected = unique(df$line)),
      sliderInput("date_range", "Date Range", min(df$date), max(df$date), range(df$date))
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Scatter", plotOutput("scatter")),
        tabPanel("Interactive", plotlyOutput("interactive_scatter")),
        tabPanel("Summary", tableOutput("summary_tbl"))
      )
    )
  )
)
