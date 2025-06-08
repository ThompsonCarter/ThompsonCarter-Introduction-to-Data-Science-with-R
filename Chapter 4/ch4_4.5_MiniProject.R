eu <- read_csv("crm_eu.csv")
us <- readxl::read_excel("crm_us.xlsx")
crm <- bind_rows(janitor::clean_names(eu), janitor::clean_names(us)) %>%
  mutate(name = str_trim(str_to_title(name))) %>%
  distinct(cust_id, .keep_all = TRUE)