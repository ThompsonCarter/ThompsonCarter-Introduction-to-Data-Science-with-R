plot(xgb_mod$evaluation_log$iter, 
     xgb_mod$evaluation_log$train_logloss, type="l")
lines(xgb_mod$evaluation_log$iter,
      xgb_mod$evaluation_log$eval_logloss, col="red")