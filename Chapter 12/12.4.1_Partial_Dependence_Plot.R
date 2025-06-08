library(pdp)

pdp_inspected <- partial(rf_mod, pred.var = "inspected", train = df)
plotPartial(pdp_inspected) + 
  labs(title="Partial Dependence of Defect Probability on Inspections")