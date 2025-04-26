library(forecast)
library(tidyverse)

sales_data <- read.csv("sample_sales_data.csv")
sales_ts <- ts(sales_data$sales, frequency = 12)

model <- auto.arima(sales_ts)
forecasted_sales <- forecast(model, h = 12)

autoplot(forecasted_sales)