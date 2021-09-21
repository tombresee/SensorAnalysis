install.packages("anomalize")

install.packages('tidyverse')

install.packages('tibbletime')

install.packages('tidyquant')

# install libraries
library(anomalize)
library(tidyverse)
library(tibbletime)
library(tidyquant)

# fetch data
data <- tq_get('AAPL',
               from = "2019-09-01",
               to = "2020-02-28",
               get = "stock.prices")

# take a peek
head(data)

# anomalize 
anomalized <- data %>% 
  time_decompose(close) %>%
  anomalize(remainder) %>%
  time_recompose()

# plot data with anomalies
anomalized %>%
  plot_anomalies(time_recomposed = TRUE, ncol = 3, alpha_dots = 0.25) + labs(title = "AAPL Anomalies")





