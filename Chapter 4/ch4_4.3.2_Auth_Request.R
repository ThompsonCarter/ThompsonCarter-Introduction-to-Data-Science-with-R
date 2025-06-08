token <- Sys.getenv("GITHUB_PAT")
resp  <- GET("https://api.github.com/user",
             add_headers(Authorization = paste("token", token)))