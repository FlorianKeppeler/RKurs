#------------------------------------------------
# Temperaturanomalien
#-----------------------------------------------

# Daten einlesen
anomalies = read.csv("C:/RKurs/Datasets/auswahl/temperature_anomalies.csv")

# Datensatz auf Deutschland Filtern
selected_data = anomalies[anomalies$country == "Germany", ]

# Datensatz auf Jahre nach 1970 Filtern
selected_data = selected_data[selected_data$Year > 1970, ]

# Die Temperaturanomalien über die Zeit darstellen
plot(selected_data$Year,
     selected_data$Temperature.anomaly,
     main = "Germany",
     ylab = "Temperaturabweichung vom Mittel")

# Trendlinie hinzufügen
trending_line = smooth.spline(selected_data$Year, selected_data$Temperature.anomaly)

lines(trending_line)

# Gibt es eine Veränderung der Temperaturanomalien über die Zeit?
cor_coef = cor(selected_data$Temperature.anomaly, selected_data$Temperature.anomaly)
cor_coef


