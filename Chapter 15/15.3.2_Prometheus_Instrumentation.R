library(prometheus)

metrics <- pr_metric_endpoint()
pr$mount("/metrics", metrics)