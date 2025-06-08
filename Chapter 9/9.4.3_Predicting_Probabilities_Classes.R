
df$prob <- predict(log_mod, type = "response")
df$pred_flag <- ifelse(df$prob > 0.5, 1, 0)
