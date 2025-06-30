#-------------------------------------------------------
# Vektoren
#----------------------------------------------------

# Vektoren erzeugen
# -> sind aneinander h?ngende Werte

vec1 = c(1, 2, 3, 123)
# -> c() steht f?r combine als Verkettung der Werte

vec1
# -> so werden die verketteten Werte dargestellt

vec1 + 10

vec1 * 2

vec1 > 2
# -> Besonderheit von Vektoren: Operatoren werden auf alle Elemente des Vektors
# angewandt

# Warum ist das hilfreich?
# -> Beispiel von vorheriger Aufgabe, Abfrage von auf mehrere Werte muss nur einmal
# durchgef?hrt werden
vec1 %% 2 == 0

# Vektoren zuweisen und erweitern
vec2 = vec1 * 2
# -> das Ergebnis l?sst sich dann wiederum in einem Vektor speichern

# Werte zu einem Vektor hinzuf?gen
vec2 = c(vec2, 15, 5, 35)

# Indizierung: einzelne Elemente eines Vektors ansteuern
vec2[1]

vec2[4]

a = vec2[4]
# -> lassen sich als Variablen speichern

b = vec2[1] * a

vec2 = c(vec2, b)
# -> Variablen lassen sich genau wie Werte an Vektoren anh?ngen

# mehrere Elemente gleichzeitig aus Vektor abfragen


vec1[c(2, 4)]
# -> wenn mehrere Werte ?bergeben werden, m?ssen diese immer als Vektor vorliegen

vec1[1:3]

vec1[2:4]

# -> funktioniert, weil R hier einen Vektor zur?ckgibt
1:10

# Filtern ?ber Indizierung

vec1 %% 2 == 0

bool_vec = vec1 %% 2 == 0

bool_vec

vec1[bool_vec]

#oder

vec1[vec1 %% 2 == 0]

vec1[vec1 > 2]


vec1[-1]
# Was passiert hier?
# -> alle au?er dem ersten Element

vec1[c(-2, -4)]
vec1[-c(2, 4)]

vec1[-(1:3)]

vec1 = vec1[-1]
# -> so lassen sich Elemente l?schen

# Werte editieren
vec1[4] = 10

vec1

vec1[1:4] = 20

vec1

# Achtung bei Zahlen und Text:
vec2[1] = "Hallo"

vec2 * 2
# Warum gibt es diesen Fehler?
# -> Vektoren sind ein inklusives System: Wenn ein Datentyp dazu kommt der nicht
# zu den bisherigen Datentypen passt, dann wandeln sich die bestehenden Datentypen um
# um den neuen Datentyp willkommen zu hei?en
# -> netter Gedanke, f?hrt aber oft zu ungewollten Fehlern

