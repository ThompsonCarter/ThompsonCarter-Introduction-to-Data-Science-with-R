
model_full <- lm(defect_rate ~ inspected + machine_age + temperature + operator_experience, data = df)
step(model_full)
