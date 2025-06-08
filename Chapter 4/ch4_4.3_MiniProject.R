library(purrr)
get_eta <- function(track_no) {
  resp <- GET(paste0("https://courier.example/shipments/", track_no))
  data <- fromJSON(content(resp, "text"))
  tibble::tibble(
    tracking = track_no,
    city = data$destination,
    status = data$status,
    eta = data$eta
  )
}
tracking <- read_csv("pending_shipments.csv")
eta_report <- map_dfr(tracking$tracking_no, get_eta)
write_csv(eta_report, "eta_report.csv")