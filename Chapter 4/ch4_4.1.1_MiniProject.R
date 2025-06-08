sensor <- read_tsv("sensor.tsv")
sensor <- sensor %>%
  mutate(timestamp = as.POSIXct(timestamp),
         overheat = temp > 90)
write_csv(sensor %>% filter(overheat), "overheat.csv")