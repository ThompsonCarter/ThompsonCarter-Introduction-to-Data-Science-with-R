obs <- c(Type1=50, Type2=30, Type3=20)
exp_probs <- c(0.5, 0.3, 0.2)
chisq.test(obs, p = exp_probs)