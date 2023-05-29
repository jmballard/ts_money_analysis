# 0 Libraries =================================================================

# 0.1 Import the libraries ----------------------------------------------------
library(tidyverse)
library(tidymodels)
library(data.table)
library(readxl)
library(stats)
library(forecast)

# 0.2 Import datasets ---------------------------------------------------------

savings <- read_xlsx("savings_history.xlsx")


# 1 Check the dataset =========================================================

ggplot(savings)+
  geom_line(aes(x = date, y = total))

savings_monthly = savings %>%
  mutate(month = month(date),
         year = year(date)) %>%
  group_by(year, month) %>%
  summarise(end = last(total)) %>%
  ungroup()

my_ts = ts(savings_monthly[['end']], 
           start = c(2017,11), frequency = 12)

plot(my_ts)

fit = stl(my_ts, s.window = 'period')
plot(fit)
ggseasonplot(my_ts,
             year.labels =  TRUE, 
             col = hcl.colors(5,'Cividis'))+
  theme_light()+
  ggtitle("Seasonal trends per year")+
  theme(plot.title = element_text(hjust =0.5))


my_forecast <- function(fit, nb)
{
  #print(accuracy(fit))
  plot(forecast(fit,nb))
  
  fore_arima = forecast(fit, h = nb)
  return(as.data.frame(fore_arima,
                       row.names = ))
}

subdata = window(my_ts,
                 start = c(2021,08))

arima_forecast = my_forecast(auto.arima(subdata),
            24)


tbats_forecast = my_forecast(tbats(subdata),
                             24)

arima_forecast['Nov 2023','Point Forecast']
tbats_forecast['Nov 2022','Point Forecast']
