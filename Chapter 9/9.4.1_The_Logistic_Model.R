
df <- df %>% mutate(defect_flag = ifelse(defect_rate > 0.02, 1, 0))
log_mod <- glm(defect_flag ~ inspected, data = df, family = binomial)
summary(log_mod)
