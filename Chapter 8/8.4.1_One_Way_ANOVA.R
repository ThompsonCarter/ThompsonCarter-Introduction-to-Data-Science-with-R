df <- read_csv("factory_data.csv")
res <- aov(defect_rate ~ line, data = df)
summary(res)