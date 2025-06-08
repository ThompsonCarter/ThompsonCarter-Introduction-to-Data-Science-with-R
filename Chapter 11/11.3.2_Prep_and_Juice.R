prepped <- prep(rec)
train_prepped <- juice(prepped)
test_prepped  <- bake(prepped, test)