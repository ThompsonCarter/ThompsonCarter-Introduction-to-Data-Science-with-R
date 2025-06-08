imp_matrix <- xgb.importance(feature_names = colnames(X), model = xgb_mod)
xgb.plot.importance(imp_matrix[1:10,])