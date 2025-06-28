#------------------------------------------------
# Funktionen selber schreiben
#-----------------------------------------------

is_even = function(x){
  
  if(x %% 2 == 0){
    
    return("gerade")
  }else{
    
    return("ungerade")
  }
}


# Jetzt mit echten Daten

anomalies = read.csv("C:/RKurs/Datasets/auswahl/temperature_anomalies.csv")

head(anomalies)


unique(anomalies$country)

# Idee: Funktion soll nach Land filtern und histogramm und Zeitreihe darstellen
# und mittelwert der anomalie ausgeben

country_anomalies = function(country_name, year_from, save_data = FALSE){
  
  tmp = anomalies[anomalies$country == country_name, ]
  
  tmp = tmp[tmp$Year > year_from, ]
  
  hist(tmp$Temperature.anomaly,
       main = country_name)
  
  plot(tmp$Year, tmp$Temperature.anomaly,
       main = country_name)
  
  lines(smooth.spline(tmp$Year, tmp$Temperature.anomaly))
  
  if(save_data == TRUE){
    
    write.csv(tmp,
              "C:/RKurs/Datasets/auswahl/Data_anomalies.csv",
              row.names = FALSE)
  }
  
  return(mean(tmp$Temperature.anomaly))
}


country_anomalies("Germany", year_from = 1940, save_data = FALSE)


