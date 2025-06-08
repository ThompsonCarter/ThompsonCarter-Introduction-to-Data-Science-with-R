library(dplyr)
library(tidyr)
library(stringr)
df_clean <- df %>%
  filter(!is.na(key_var)) %>%
  mutate(revenue = replace_na(revenue, 0)) %>%
  mutate(across(where(is.numeric), ~ if_else(is.na(.x), median(.x, na.rm = TRUE), .x)))

customers <- customers %>%
  mutate(name = str_trim(str_to_title(name)))