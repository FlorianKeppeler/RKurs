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


# Aufgabe

# Erzeugen Sie die Variablen x = 3 und y = 19 und speichern sie die Potenz von
# x hoch y in einer dritten Variable z. Nutzen Sie den Modulo Operator und den
# Gleichheitsoperator um eine logische Abfrage zu erstellen die TRUE ausgibt
# wenn z eine gerade Zahl ist, und FALSE wenn z eine ungerade Zahl ist.
# Tipp: eine gerade Zahl hat keinen Rest wenn sie durch 2 geteilt wird.
#
# Ziehen Sie jetzt von z die Variable x ab und testen sie ob z nun eine gerade
# Zahl ist.
# Speichern Sie nun in Variable z die Potenz von z hoch z und führen Sie Abfrage
# nach der Geradheit von z nocheinmal durch. Was ist jetzt passiert?

x = 3

y = 19

z = y^x

z %% 2 == 0

z = z - 3

z %% 2 == 0

z = z^z

z %% 2 == 0


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
