library(readr); library(dplyr); library(ggplot2)
df <- read_csv("manufacturing_sensors.csv")  # features f1 to f12
sensor_data <- df %>% select(starts_with("f")) %>% scale() %>% as.data.frame()

