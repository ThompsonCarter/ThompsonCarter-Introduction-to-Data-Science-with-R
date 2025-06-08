visits <- read_csv("visits_wide.csv")
glimpse(visits)

visits_long <- visits %>%
  pivot_longer(
    cols = starts_with("visit"),
    names_to = c("visit_num", ".value"),
    names_sep = "_"
  )

visits_clean <- visits_long %>%
  filter(!is.na(bp))

visits_sep <- visits_clean %>%
  separate(bp, into = c("systolic","diastolic"), sep = "/") %>%
  mutate(
    systolic  = as.integer(systolic),
    diastolic = as.integer(diastolic)
  )

bp_summary <- visits_sep %>%
  group_by(patient_id) %>%
  summarize(
    avg_sys = mean(systolic),
    avg_dia = mean(diastolic),
    visits  = n()
  )
print(bp_summary)