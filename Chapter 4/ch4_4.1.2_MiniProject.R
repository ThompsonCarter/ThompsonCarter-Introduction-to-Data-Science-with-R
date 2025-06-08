sheets <- excel_sheets("lab_results.xlsx")
lab_list <- lapply(sheets, function(sheet) {
  df <- read_excel("lab_results.xlsx", sheet = sheet)
  df$department <- sheet
  df
})
lab_results <- bind_rows(lab_list)
write_csv(lab_results, "lab_results_2025-06.csv")