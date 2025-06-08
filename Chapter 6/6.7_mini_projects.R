# Project A: Manufacturing Dashboard
# Scatterplot
ggplot(factory_df, aes(inspected, defect_rate, color = line)) +
  geom_point() +
  facet_wrap(~ month(date))

# Line chart
ggplot(factory_df, aes(month(date), defect_rate)) +
  stat_summary(fun = mean, geom = "line")

# Project B: Patient Vitals Report
vitals_long <- pivot_longer(patient_vitals, cols = c(systolic, diastolic), names_to = "type", values_to = "bp")

ggplot(vitals_long, aes(type, bp)) +
  geom_boxplot()

ggplot(patient_vitals, aes(systolic)) +
  geom_histogram(binwidth = 5)

ggplot(vitals_long, aes(type, bp)) +
  geom_boxplot() +
  facet_wrap(~ type) +
  theme_classic()

ggsave("boxplot.pdf")