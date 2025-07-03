#-------------------------------------------------------------
# Schleifen
#--------------------------------------------------------


# Daten einlesen
anomalies = read.csv("C:/RKurs/Datasets/auswahl/temperature_anomalies.csv")

create_timeline = function(country_name, starting_year){
  
  if(starting_year < 1960){
    
    starting_year = 1960
  }
  
  if(country_name %in% anomalies$country){
    
  # Datensatz auf Deutschland Filtern
  selected_data = anomalies[anomalies$country == country_name, ]
  
  # Datensatz auf Jahre nach 1970 Filtern
  selected_data = selected_data[selected_data$Year > starting_year, ]
  
  # Die Temperaturanomalien über die Zeit darstellen
  plot(selected_data$Year,
       selected_data$Temperature.anomaly,
       main = country_name,
       ylab = "Temperaturabweichung vom Mittel")
  
  # Trendlinie hinzufügen
  trending_line = smooth.spline(selected_data$Year, selected_data$Temperature.anomaly)
  
  lines(trending_line)
  
  # Gibt es eine Veränderung der Temperaturanomalien über die Zeit?
  cor_coef = cor(selected_data$Temperature.anomaly, selected_data$Temperature.anomaly)
  
  return (cor_coef)
  
  }else{
    print(paste(country_name, "ist nicht im Datensatz enthalten"))
  }
  
}


create_timeline("Germany", 1920)

create_timeline("Switzerland", 1920)
create_timeline("Sri Lanka", 1920)

# aus einem Vektor 
country_names = unique(anomalies$country)

par(mfrow=c(2,2))

create_timeline(country_names[1], 1970)
create_timeline(country_names[2], 1970)
create_timeline(country_names[3], 1970)
create_timeline(country_names[4], 1970)

# geht schon, aber ist schon nervig. Gibt es da nicht etwas das das für uns übernimmt?

for(i in 1:10){
  
  print("Hallo")
}




par(mfrow=c(2,2))

for(i in 1:16){
  
  create_timeline(country_names[i], 1970)
}

# kann auch über den gesamten Datensatz ausgeführt werden
for(i in 1:length(country_names)){
  
  create_timeline(country_names[i], 1970)
}

# Was aber wenn ich gar nicht weiß wie oft ich die Schleifen berechnen möchte?

coef = 1
i = 1

while(abs(coef) > 0.05){

  coef = create_timeline(country_names[i], 1970)  
  
  i = i + 1
}

