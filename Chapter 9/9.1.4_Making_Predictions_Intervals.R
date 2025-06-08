
new_data <- tibble(inspected = c(250, 600))
preds <- predict(model1, newdata = new_data, interval = "confidence")
cbind(new_data, preds)
