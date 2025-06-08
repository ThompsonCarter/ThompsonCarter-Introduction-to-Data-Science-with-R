install.packages("GGally")
library(GGally)
ggpairs(
  data  = clinic,
  columns = c("age", "systolic_bp", "diastolic_bp")
)