df <- tibble(date_time = c("2025-06-07 16:00", "2025-06-08 09:30"))
df2 <- df %>%
  separate(date_time, into = c("date","time"), sep = " ")

df3 <- df2 %>%
  unite("dt", date, time, sep = " at ")