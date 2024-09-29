#--------------------------------------------------------
# Operatoren und Variablen
#-----------------------------------------------------

# Mathematische Operatoren

# addieren
2 + 4

# -> Ergebnis taucht in der Console auf

# substrahieren
6 - 2

# multiplizieren
3 * 4

3.123 * 4

# dividieren
6 / 5

# quadrieren
2^2

# modulo Operator ... was macht das denn ?
6 %% 5

13 %% 5

# -> bis hierher ist alles wie beim Taschenrechner

# jetzt kommt was neues

# Logische Operatoren

4 > 2

4 < 2

4 == 2

4 != 2

4 <= 2

4 >= 2

# Zuweisungsoperatoren

# -> ein Wert wird zur Variable

a <- 4
# R spezifische Schreibweise -> wird Ihnen ständig begegnen im Kontext mit R

b = 2
# -> viel universellere Schreibart, aber Fehlerquelle mit logischen Operator == 

# ist Ihre Entscheidung, ich empfehle =, da bei Wechsel auf eine andere 
# Programmiersprache kein umlernen notwendig ist

a
a + 4

b
b * 5

# was Sie vielleicht bemerkt haben: Variablen tauchen in Environment auf
# -> wenn Variablen angelegt werden gibt es eine tatsächliche Kopie der Werte
# im Arbeitsspeicher -> somit sind die Werte auch nach der Berechnung von R
# auffindbar

a + b

c = a + b

c == a + b

d = c * a * b

d = d - c


# Zusatz: Character

a = "Hallo"

b = "Du"

# -> In Variablen kann man nicht nur Zahlen speichern, sondern auch Strings ...
# oder eigentlich jede Art von R Objekt

a + b
a * b

# -> wichtiger Fehler: auf Character lassen sich keine mathematische Operatoren
# anwenden

a == b
a != b

# -> logische Operatoren aber schon

a < b
a > b

# -> Vorsicht! Evtl. Verhalten, dass man nicht erwartet
