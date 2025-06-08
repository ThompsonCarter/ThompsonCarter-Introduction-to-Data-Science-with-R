sales_files <- list.files("pos/", "sales_.*\.csv", full.names = TRUE)
sales_raw <- purrr::map_dfr(sales_files, readr::read_csv)

inv <- jsonlite::fromJSON(httr::GET("https://api.retailer.local/inventory") |> 
                  httr::content("text", encoding = "UTF-8")) |> tibble::as_tibble()

returns <- readxl::read_excel("returns/weekly_returns.xlsx", sheet = 1)
con <- DBI::dbConnect(RPostgres::Postgres(), dbname = "retail")
prod <- dplyr::tbl(con, "product_master") |> dplyr::collect()

sales <- sales_raw %>% mutate(date = lubridate::ymd(date), sku = str_trim(str_to_upper(sku)))
inventory <- inv %>% mutate(sku = str_trim(str_to_upper(sku)))
returns <- returns %>% janitor::clean_names() %>%
  mutate(sku = str_trim(str_to_upper(sku)))

weekly <- sales %>%
  left_join(prod,  by = "sku") %>%
  left_join(inventory, by = "sku") %>%
  left_join(returns,   by = c("sku","date")) %>%
  replace_na(list(return_qty = 0))

write_csv(weekly, "reports/weekly_report_2025-06-07.csv")
arrow::write_parquet(weekly, "reports/weekly_report_2025-06-07.parquet")