#---------------------------------------------------------
# Matrizen und Dataframes
#----------------------------------------------------

vec = 1:9

mat = matrix(vec)
mat
# Vektorren lassen sich in Matrizen umwandeln
# -> Dimensionen der Matrix muss mit angegeben werden

mat = matrix(vec, nrow = 3, ncol = 3)
mat

mat = matrix(vec, nrow = 3, ncol = 3, byrow = T)
mat
# -> ob erst Spalten und dann Zeilen befüllt werden oder andersherum kann
# gesteuert werden mit byrow Option

# Da wir jetzt mehrere Dimemnsionen haben, erfolgt die Indizierung per [] über
# mehrere Indizes

mat[1,1]
# Element in Zeile 1 und Spalte 1

mat[1,3]
# Element in Zeile 1 und Spalte 3

mat[3,3]
# Element in Zeile 3 und Spalte 3

# auch ganze Zeilen oder Spalten lassen sich auswählen wenn kein Index übergeben wird
mat[1,]
# alle Elemente aus Zeile 1

mat[ ,3]
# alle Elemente aus Spalte 3

# es lassen sich alle Indizierungsoperationen wie für Vektoren verwenden
mat[c(1,3),]
# alle Elemente aus Zeile 1 und 3

mat[, 2:3]
# alle Elemente aus Spalte 2 bis 3

mat[-1,]
# alle Elemente außer Zeile 1

mat = mat[-3,]
mat
# so lassen sich ganze Spalten oder Zeilen löschen

# Elemente editieren
mat2 = matrix(0, nrow=5, ncol=2)

mat2[,1] = 1:5
mat2 

mat2[,2] = mat2[,1]*2
mat2

# Aufgabe zu Indizierung von Matrizen

# bulls eye Übung ---

mat = matrix(5, nrow = 5, ncol = 5)

mat[2:4, 2:4] = 20
mat[3,3] = 50


mat = mat[-1,]
mat = mat[-4,]
mat = mat[,-c(1, 5)]

#-----------------------------------------------
# Dataframes
#-------------------------------------------

vec1 = 1:3

vec2 = c(24, 28, 34)

vec3 = c("Herbert", "Anna")

df = data.frame("ID" = vec1, "Alter" = vec2, "Name" = vec3)

vec3 = c("Herbert", "Anna", "Georg")

df = data.frame("ID" = vec1, "Alter" = vec2, "Name" = vec3)

df

# -> hier auch zeigen, dass in R Studio der Dataframe angezeigt werden kann

# noch mehr Optionen zu indizieren:

df$ID

df[,1]

df$Name

mean(df$Alter)


df[, "Name"]

df[, c("ID", "Name")]


df[1,]

df[df$Name == "Herbert", ]

df[df$Alter > 25, ]

# zeigen was ein dataframe ist, dann daten einlesen aus excel tabellen und csv dateien



