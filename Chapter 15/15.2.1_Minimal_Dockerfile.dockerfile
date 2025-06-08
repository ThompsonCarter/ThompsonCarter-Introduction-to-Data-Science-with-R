# Start from a lightweight R image
FROM rocker/r-ver:4.3.2

RUN apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev

# Install required packages
RUN R -e "install.packages(c('plumber','ranger','jsonlite'), repos='https://cloud.r-project.org')"

# Copy model and API
WORKDIR /app
COPY models/rf_defect.rds /app/models/
COPY plumber.R /app/

EXPOSE 8000
CMD ["R", "-e", "pr <- plumber::plumb('/app/plumber.R'); pr$run(host='0.0.0.0', port=8000)"]