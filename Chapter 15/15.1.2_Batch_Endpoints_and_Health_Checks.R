#* @post /predict_batch
function(req){
  df <- jsonlite::fromJSON(req$postBody)
  probs <- predict(rf, df, type="prob")[, "1"]
  data.frame(probability = probs)
}

#* @get /health
function() list(status = "ok")