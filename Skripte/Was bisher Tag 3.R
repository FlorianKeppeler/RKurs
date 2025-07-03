#-------------------------------------------------
# Was bisher geschah ....
#-----------------------------------------------

# Matrizen

mat = matrix(1:9, nrow = 3, ncol= 3)

# Auf Elemente lässt sich mit [ , ] zugreifen:

mat[3, 2]

# ganze Zeilen und Spalten auswählen

mat[3, ] # ganze dritte Zeile

mat[ ,2] # ganze zweite Spalte  


# wie lassen sich Stellen in Matrix finden?

which(mat == 6)  # wenn uns Zeile und Spalten des gefundenen Wertes egal sind

which(mat == 6, arr.ind = TRUE)
# jetz werden Zeile und Spalte des Wertes ausgegeben

# Damit lässt sich auch über einen Vektor indizieren:
index = which(mat == 6, arr.ind = TRUE)

mat[index[1], ] # Ganze Zeile des gefundenen Wertes

mat[ , index[2]] # Ganze Spalte des gefundenen Wertes


# Dataframes

# import über 'Environment > Import Dataset'
# -> dann Befehl aus der Konsole in Skript copieren

pirates = read.csv("C:/RKurs/Datasets/auswahl/pirates.csv")

# kurzer Überblick
head(pirates)

# indizierung funktioniert wie bei Matrizen:

pirates[12,] # ganze 12te Zeile
pirates[, 1] # ganze erste Spalte

# aber geht auch so
pirates$id

# oder so
pirates[, "id"]

# neue Spalten hinzufügen
pirates$NeueSpalte = pirates$id^2

# Filtern:

pirates[pirates$age > 40, ]




