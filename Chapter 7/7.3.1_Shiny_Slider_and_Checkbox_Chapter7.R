
sliderInput("date_range", "Date Range",
            min = min(df$date), max = max(df$date),
            value = c(min(df$date), max(df$date)))

checkboxGroupInput("lines", "Lines to Display",
                   choices = unique(df$line), selected = unique(df$line))
