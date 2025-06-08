contacts <- contacts %>%
  separate(full_name, into = c("first_name", "last_name"), sep = " ")