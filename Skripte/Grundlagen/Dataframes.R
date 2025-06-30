#-----------------------------------------------
# Dataframes
#-------------------------------------------

# In Data.frames können unterschiedlich Datentypen gespeichert werden
vec1 = 1:3

vec2 = c(24, 28, 34)

vec3 = c("Herbert", "Anna")

df = data.frame("ID" = vec1, "Alter" = vec2, "Name" = vec3)
# -> geht nicht. Alle Vektoren m?ssen die gleiche l?nge haben

vec3 = c("Herbert", "Anna", "Georg")

df = data.frame("ID" = vec1, "Alter" = vec2, "Name" = vec3)

df

# -> hier auch zeigen, dass in R Studio der Dataframe angezeigt werden kann


# Indizierung wie Matrizen

df[1,]

df[,3]

# noch mehr Optionen zu indizieren:

# Spalten k?nnen mit Namen ausgew?hlt werden
df$ID

# entspricht
df[,1]

# oder
df$Name

# entspricht
df[, "Name"]

# auch mehrere Spalten sind per Namen anzusteuern
df[, c("ID", "Name")]

# so lassen sich Funktionen auf die Spalten anwenden und es bleibt ?bersichtlich
mean(df$Alter)

# oder Filtern

df[df$Name == "Herbert", ]

df[df$Alter > 25, ]

# durch Dataframes bleibt der Code lesbarer


# Spalten hinzufügen
df$Coolnes = 1000

df

df$Hut = c(TRUE, FALSE)

df$Hut = c(TRUE, FALSE, FALSE)


# Daten einlesen

# ?ber "Import Dataset"

pirates = read.csv("C:/RKurs/pirates.csv")

# erster ?berblick
head(pirates)

table(pirates$sex)

mean(pirates$height)



