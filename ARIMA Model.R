#load Library forecast for use auto.arima

install.packages("forecast")
library("forecast")

# Load The Data
volcanodust<-scan("http://robjhyndman.com/tsdldata/annual/dvi.dat", skip=1) 


# Convert The Data To Time Series
vdts<-ts(volcanodust,start=c(1500)) 


# Plot The Time Series
plot.ts(vdts)


# ARIMA Model
myModel<-auto.arima(vdts)
myModel


# Predicting for 10 Years by The HoltWinters Model and Plot The predicting

forecast(myModel,h = 10)
plot(forecast(myModel))
