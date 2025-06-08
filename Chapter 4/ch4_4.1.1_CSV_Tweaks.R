read_delim("eu.csv", delim = ";")
read_csv("dates.csv", col_types = "Dc")
read_csv("survey.csv", skip = 2)
# For large files
read_csv_chunked() # placeholder for chunk reading