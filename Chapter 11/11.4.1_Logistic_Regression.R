log_mod <- logistic_reg(mode = "classification") %>%
  set_engine("glm")