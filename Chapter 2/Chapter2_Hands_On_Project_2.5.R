visits <- read.csv("visits.csv", stringsAsFactors = FALSE)
glimpse(visits)
head(visits,10)
length(unique(visits$user_id))
visits[visits$visit_duration > 60, ]