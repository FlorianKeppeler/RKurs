#----------------------------------------------------------
# Visualisierungen
#--------------------------------------------------

pirates = read.csv("C:/RKurs/pirates.csv")

# Histogramm

hist(pirates$weight)

# -> super für einen ersten Überblick der Daten
# aber häßlich!!!

colors()

hist(pirates$weight,
     col = "thistle",
     border = "thistle2", 
     main = "Gewichtsverteilung Pirat:innen",
     xlab="Gewicht",
     ylab = "Häufigkeit")

abline(v = mean(pirates$weight),
       lty = 2,
       col = "tomato",
       lwd = 2)

abline(h = seq(0, 200, by = 50), col="grey90")

# Übung Histogramm







plot(density(pirates$weight[pirates$sex == "male"]),
     main = "",
     xlim = c(35, 120),
     ylim = c(0, 0.05), col = "blue")
lines(density(pirates$weight[pirates$sex == "female"]), col="red")

boxplot(pirates$weight[pirates$sex == "male"], pirates$weight[pirates$sex == "female"])

