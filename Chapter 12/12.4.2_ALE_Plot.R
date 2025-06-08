library(ALEPlot)

ALEPlot(X, xgb_mod, pred.fun = function(m, x) predict(m, x), J = "inspected")