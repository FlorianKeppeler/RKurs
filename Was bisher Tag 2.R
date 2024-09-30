#---------------------------------------------------------
# Was bisher geschah ...
#--------------------------------------------------------

# Operatoren

4 + 2

4 < 2

a = 4

# Variablen

b = 2

a = a + b

b < a

# Vektoren

vec = c(a, b, 12, 34, 23)

vec = c(vec, 1)

vec[1:3]
vec[vec > 10]

# Funktionen

mean(vec)
# Hilfe über F1 Taste

mean(vec, na.rm = TRUE)

# nach Schlagworten suchen geht auch

# -> Google

install.packages("Package")

library(Package)
Package::function()

# Matrizen

mat = matrix(vec, nrow = 3, ncol = 2)
# -> lassen sich aus Vektoren erzeugen

mat = matrix(0, nrow = 3, ncol = 3)
# -> aber auch nur mit einem Wert füllen

# indizierung braucht jetzt 2 Zahlen -> [Zeilen, Spalten]
mat[,] = 5

mat[2,2] = 100

mat[2,]
mat[,2]


# Jetzt gehts weiter mit Dataframes!