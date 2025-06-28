#----------------------------------
# Dichteplot
#--------------------------------


pirates = read.csv("C:/RKurs/Datasets/pirates.csv")

density(pirates$weight[pirates$sex == "male"])

# -> density darstellen
plot(density(pirates$weight[pirates$sex == "male"]))

plot(density(pirates$weight[pirates$sex == "female"]))

# -> alles in eine Grafik
plot(density(pirates$weight[pirates$sex == "male"]))

lines(density(pirates$weight[pirates$sex == "female"]))

# unterschiedliche Farben

plot(density(pirates$weight[pirates$sex == "male"]),
     col= "blue",
     lwd = 2,
     ylim = c(0, 0.05),
     main = "Verteilung Gewicht nach Geschlecht",
     xlab="Gewicht")

lines(density(pirates$weight[pirates$sex == "female"]),
      col = "red",
      lwd = 2)

legend("topright",
       legend = c("female", "male"),
       fill =c("red", "blue"), bty = "n")
