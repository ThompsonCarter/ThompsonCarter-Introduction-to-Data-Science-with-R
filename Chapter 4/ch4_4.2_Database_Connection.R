library(DBI)
library(RSQLite)
con <- dbConnect(RSQLite::SQLite(), "db/company.sqlite")
dbListTables(con)