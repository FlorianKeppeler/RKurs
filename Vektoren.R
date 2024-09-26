#-------------------------------------------------------
# Vektoren
#----------------------------------------------------

# Vektoren erzeugen
# -> sind aneinander hängende Werte

vec1 = c(1, 2, 3, 123)
# -> c() steht für combine oder concetinate als Verkettung der Werte

vec1
# -> so werden die verketteten Werte dargestellt

vec1 + 10

vec1 * 2

vec1 > 2
# -> Besonderheit von Vektoren: Operatoren werden auf alle Elemente des Vektors
# angewandt

# Warum ist das hilfreich?
# -> Beispiel von vorheriger Aufgabe, Abfrage von auf mehrere Werte muss nur einmal
# durchgeführt werden
vec1 %% 2 == 0

# Vektoren zuweisen und erweitern
vec2 = vec1 * 2
# -> das Ergebnis lässt sich dann wiederum in einem Vektor speichern

# Werte zu einem Vektor hinzufügen
vec2 = c(vec2, 15, 5, 35)

# Indizierung: einzelne Elemente eines Vektors ansteuern
vec2[1]

vec2[4]

a = vec2[4]
# -> lassen sich als Variablen speichern

b = vec2[1] * a

vec2 = c(vec2, b)
# -> Variablen lassen sich genau wie Werte an Vektoren anhängen

# mehrere Elemente gleichzeitig aus Vektor abfragen


vec1[c(2, 4)]
# -> wenn mehrere Werte übergeben werden, müssen diese immer als Vektor vorliegen

vec1[1:3]

vec1[2:4]

# -> funktioniert, weil R hier einen Vektor zurückgibt
1:10

# Filtern über Indizierung

vec1 %% 2 == 0

bool_vec = vec1 %% 2 == 0

bool_vec

vec1[bool_vec]

#oder

vec1[vec1 %% 2 == 0]

vec1[vec1 > 2]


vec1[-1]
# Was passiert hier?
# -> alle außer dem ersten Element

vec1[c(-2, -4)]
vec1[-c(2, 4)]

vec1[-(1:3)]

vec1 = vec1[-1]
# -> so lassen sich Elemente löschen

# Werte editieren
vec1[4] = 10

vec1

vec1[1:4] = 20

vec1

vec2 = c(vec2, "Hallo")

vec2 * 2
# Warum gibt es diesen Fehler?
# -> Vektoren sind ein inklusives System: Wenn ein Datentyp dazu kommt der nicht
# zu den bisherigen Datentypen passt, dann wandeln sich die bestehenden Datentypen um
# um den neuen Datentyp willkommen zu heißen
# -> netter Gedanke, führt aber oft zu ungewollten Fehlern


# Aufgabe


