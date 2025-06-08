download.file(
  url = "https://example.com/covid_data.csv",
  destfile = "covid_data.csv"
)
covid <- read_csv("covid_data.csv")
glimpse(covid)

covid %>%
  group_by(country) %>%
  summarize(total_cases = sum(cases, na.rm = TRUE)) %>%
  arrange(desc(total_cases))