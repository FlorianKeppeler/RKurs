#-----------------------------------------------
# Dataframes
#-------------------------------------------

vec1 = 1:3

vec2 = c(24, 28, 34)

vec3 = c("Herbert", "Anna")

df = data.frame("ID" = vec1, "Alter" = vec2, "Name" = vec3)
# -> geht nicht. Alle Vektoren müssen die gleiche länge haben

vec3 = c("Herbert", "Anna", "Georg")

df = data.frame("ID" = vec1, "Alter" = vec2, "Name" = vec3)

df

# -> hier auch zeigen, dass in R Studio der Dataframe angezeigt werden kann

# noch mehr Optionen zu indizieren:

# Spalten können mit Namen ausgewählt werden
df$ID

# entspricht
df[,1]

# oder
df$Name

# entspricht
df[, "Name"]

# auch mehrere Spalten sind per Namen anzusteuern
df[, c("ID", "Name")]

# so lassen sich Funktionen auf die Spalten anwenden und es bleibt übersichtlich
mean(df$Alter)


# Zeilen lassen sich auch auswählen -> wie bei Matrizen

df[1,]

df[df$Name == "Herbert", ]

df[df$Alter > 25, ]

# durch Dataframes bleibt der Code lesbarer

df$Coolnes = 1000

df

df$Hut = c(TRUE, FALSE, FALSE)

# Daten einlesen

# über "Import Dataset"

pirates = read.csv("C:/RKurs/pirates.csv")

# erster Überblick
head(pirates)

table(pirates$sex)

mean(pirates$height)

# Signifikanz Test 
# Gibt es einen signifikanten Unterschied des mittleren Gewichts von weiblichen
# und männlichen Pirat:innen

# -> t test

# davor test auf Normalverteilung

# shapiro test

shapiro.test(pirates$weight[pirates$sex == "male"])
shapiro.test(pirates$weight[pirates$sex == "female"])

shapiro.test(rnorm(1000))

t.test(x = pirates$weight[pirates$sex == "male"],
       y = pirates$weight[pirates$sex == "female"])

t.test(x = rnorm(1000, mean = 0, sd = 1), y = rnorm(1000, mean = 100, sd = 1))

# Übung Dataframes

