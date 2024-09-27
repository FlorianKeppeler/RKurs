#-----------------------------------------------------
# Funktionen
#---------------------------------------------------


# eine Funktion kennen wir schon

c()

vec = c(1, 2, 3, 4, 5, 6)

vec

# R liefert einen Haufen Funktionen von Haus aus

sum(vec)

mean(vec)

median(vec)

summary(vec)

# manchmal verhalten sich Funktionen nicht so wie man will

vec[1] = NA

vec
# -> NAs sind sehr häufig in Real Life Daten -> sobald ein Messwert fehlt

sum(vec)

# sum markieren und F1 für Hilfe drücken

sum(vec, na.rm = TRUE)

mean(vec)
# -> vielleicht hat mean auch eine na.rm Option
# tab drücken um Argumente der Funktion anzeigen zu lassen

# wie finde ich Funktionen deren Namen ich nicht weiß?
# -> in Help tab gibts ne Suchfunktion -> nach cumulative sum suchen

cumsum(vec)

cumsum(vec[-1])

vec[complete.cases(vec)]

# was wenn die Hilfe keinen Treffer zeigt?
# -> Hilfe findet nur Schlagwörter in installierten Paketen

# Hier kommt die eigentliche Stärke von R zum tragen! Unzählige Erweiterungen
# die deren Code durch Qualitätschecks geprüft wird, oftmals an wissenschaftliche
# Publikationen geknüpft und vor allem: kostenlos!

# Suche nach geometrischen Mittel
# -> stack overflow -> psych package

# library(psych)
# es gibt kein Paket psych -> installieren mit install.packages("psych")

psych::geometric.mean(vec)

# weitere Funktionen

vec = sample(1:10, 100, replace = T)

vec == 3

which(vec == 3)
# -> gibt die entsprechenden Stellen aus

sort(vec)

order(vec)
# -> gibt ebenfalls die entsprechenden Stellen der Größe nach sortiert aus

seq(0, 100, by = 10)
# wie 1:10 aber mit individuellen Schrittweiten



# Aufgabe

# Erzeugen Sie mit der Funktion sample() einen Vektor bestehend aus 100 zufälligen
# Zahlen zwischen 1 und 5
# Berechnen Sie die Summe, den Mittelwert und Median des Vektors
# Sortieren Sie den Vektor von großen nach kleinen Zahlen (Schauen sie sich dafür die Argumente der sort() Funktion an)
# Finden Sie mittels R Hilfe und Google eine Funktion die ausgibt wie oft eine Zahl im Vektor vorkommt


# Exkurs wenn Zeit ist: eigene Funktionen schreiben

is_even = function(x) {
  
  return (x %% 2 == 0)
}

vec[is_even(vec)]

