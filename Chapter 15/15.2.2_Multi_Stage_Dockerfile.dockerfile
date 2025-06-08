FROM --platform=linux/amd64 rstudio/plumber:latest as builder
...
FROM gcr.io/distroless/base-debian11
COPY --from=builder /usr/local/lib/R /usr/local/lib/R
COPY --from=builder /app /app