library(xgboost)
library(Matrix)

X <- model.matrix(defect_flag ~ inspected + machine_age + operator_experience, data = df)[,-1]
y <- df$defect_flag

set.seed(1)
train_idx <- sample(seq_len(nrow(X)), size = 0.8*nrow(X))
dtrain <- xgb.DMatrix(data = X[train_idx,], label = y[train_idx])
dtest  <- xgb.DMatrix(data = X[-train_idx,], label = y[-train_idx])

params <- list(
  objective = "binary:logistic",
  eta = 0.1,
  max_depth = 3,
  subsample = 0.8,
  colsample_bytree = 0.8
)

watchlist <- list(train = dtrain, eval = dtest)

xgb_mod <- xgb.train(
  params = params,
  data = dtrain,
  nrounds = 100,
  watchlist = watchlist,
  early_stopping_rounds = 10,
  print_every_n = 10
)