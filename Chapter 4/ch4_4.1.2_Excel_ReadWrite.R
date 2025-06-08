library(readxl)
roster   <- read_excel("hr/employee_roster.xlsx", sheet = "2025")
contacts <- read_excel("hr/employee_roster.xlsx", range = "B1:D50")

library(writexl)
write_xlsx(roster, "clean/roster_clean.xlsx")