clinic <- clinic %>%
  mutate(
    age_band = cut(age, breaks = seq(0, 90, 10), right = FALSE)
  )

bp_by_age <- clinic %>%
  group_by(age_band) %>%
  summarise(
    avg_sys = mean(systolic_bp,    na.rm = TRUE),
    avg_dia = mean(diastolic_bp,   na.rm = TRUE),
    count   = n()
  )

clinic <- clinic %>%
  mutate(
    crisis_flag = systolic_bp > 180 | diastolic_bp > 120
  )

crisis_cases <- clinic %>% filter(crisis_flag)

library(janitor)
clinic %>%
  tabyl(gender, crisis_flag) %>%
  adorn_percentages("row") %>%
  adorn_totals()