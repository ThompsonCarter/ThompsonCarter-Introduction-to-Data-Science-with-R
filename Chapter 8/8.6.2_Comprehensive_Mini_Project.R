library(readr); library(dplyr)
bp <- read_csv("bp_data.csv")
bp <- bp %>% mutate(
  group = case_when(
    age < 40 ~ "Young",
    age < 60 ~ "Middle",
    TRUE      ~ "Older"
  )
)
library(skimr)
skim(bp)
by(bp$systolic, bp$group, shapiro.test)
library(car)
leveneTest(systolic ~ group, data = bp)
res_aov <- aov(systolic ~ group, data = bp)
summary(res_aov)
TukeyHSD(res_aov)
kruskal.test(systolic ~ group, data = bp)