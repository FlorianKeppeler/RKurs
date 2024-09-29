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


# Daten einlesen

# über "Import Dataset"

pirates = read.csv("C:/RKurs/pirates.csv")

# erster Überblick
head(pirates)









unique(pirates$favorite.pirate)

pirates$BMI = pirates$weight / pirates$height

pirates[pirates$BMI == max(pirates$BMI), ]


summary(pirates$tattoos)

table(pirates$sex)

t.test(pirates$weight[pirates$sex == "male"], pirates$weight[pirates$sex == "female"])

boxplot(pirates$weight[pirates$sex == "male"], pirates$weight[pirates$sex == "female"])

plot(density(pirates$weight[pirates$sex == "male"]),
     main = "",
     xlim = c(35, 120),
     ylim = c(0, 0.05), col = "blue")

lines(density(pirates$weight[pirates$sex == "female"]), col="red")
