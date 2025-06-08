sql <- "SELECT product_id, SUM(quantity) AS total
        FROM order_items
        WHERE order_date BETWEEN ? AND ?
        GROUP BY product_id
        ORDER BY total DESC
        LIMIT 10;"
top10 <- dbGetQuery(con, sql, params = list("2025-01-01", "2025-06-30"))