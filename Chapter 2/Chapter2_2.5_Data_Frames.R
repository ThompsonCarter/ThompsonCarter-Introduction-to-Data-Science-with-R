measurements <- data.frame(
  ID     = c("M1","M2","M3"),
  height = c(165, 170, 158),
  weight = c(60, 72, 55)
)
str(measurements)
glimpse(measurements)
measurements$height
measurements[["weight"]]
measurements[1,2]