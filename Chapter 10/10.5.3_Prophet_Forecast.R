m <- prophet(prop_df, weekly.seasonality = TRUE)
future <- make_future_dataframe(m, periods = 30)
forecast_p <- predict(m, future)

prophet_plot_components(m, forecast_p)