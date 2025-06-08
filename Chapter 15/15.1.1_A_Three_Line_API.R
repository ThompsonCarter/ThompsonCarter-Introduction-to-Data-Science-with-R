# plumber.R
library(plumber)
library(ranger)

#* @apiTitle Defect Probability API

# Load saved random-forest model
rf <- readRDS("models/rf_defect.rds")

#* Predict defect probability
#* @param inspected:int Parts inspected
#* @param machine_age:int Machine age in years
#* @post /predict
function(inspected, machine_age){
  new <- data.frame(inspected = as.numeric(inspected),
                    machine_age = as.numeric(machine_age))
  prob <- predict(rf, new, type = "prob")[, "1"]
  list(probability = prob)
}