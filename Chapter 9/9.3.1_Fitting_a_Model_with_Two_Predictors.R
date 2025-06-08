
df <- df %>% mutate(machine_age = c(1,2,3,4,5,6,7,8,9))
model2 <- lm(defect_rate ~ inspected + machine_age, data = df)
summary(model2)
