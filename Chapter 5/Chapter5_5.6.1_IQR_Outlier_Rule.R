q1  <- quantile(x, 0.25, na.rm = TRUE)
q3  <- quantile(x, 0.75, na.rm = TRUE)
iqr <- IQR(x, na.rm = TRUE)
lower <- q1 - 1.5 * iqr
upper <- q3 + 1.5 * iqr
outliers <- x[x < lower | x > upper]