library(tidyverse)   # loads readr, dplyr, tibble, etc.
sales  <- read_csv("data/sales_q1.csv")
clinic <- read_csv("data/clinic_visits.csv")
glimpse(sales)
glimpse(clinic)