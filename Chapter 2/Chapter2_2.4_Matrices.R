counts <- matrix(
  data = c(10,12,11, 14,13,15, 9,8,7),
  nrow = 3,
  byrow = TRUE
)
rownames(counts) <- c("LineA","LineB","LineC")
colnames(counts) <- c("Shift1","Shift2","Shift3")

counts["LineB", "Shift2"]
counts[1, ]
counts[, 3]