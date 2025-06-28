#----------------------------------------------------
# Schleifen in R
#--------------------------------------------------

# Was macht eine Schleife?

# Zeigen dass eine Schleife einfach einen bestimmten Code Abschnitt ausführt

a = 2

a = a + a

a

# jetzt als Schleife

a = 2

count = 0

while(a < 1000) {
  
  a = a + a
  
  count = count + 1
}

a

count
# -> while Schleife, wenn man nicht weiß wie oft die Schleife laufen soll

# allerdings kann man die Schleife auch anders ausführen

a = 2

count = 0

while(count < 100) {
  
  a = a + a
  
  count = count + 1
}

a

# klassischerweise nutzt man hierfür die for Schleife


for(i in c(1, 3, 4, 2, 5)) {
  
  print(i)
}
# -> i nimmt alle Werte aus dem Vektor an


a = 2

for(i in 1:100) {
  
  a = a + a
}
# -> die Schleife läuft so lange wie der Vektor lang ist


# Übung Fibonacci
#------------------------------------------------
#------------------------------------------------
#------------------------------------------------


# großer Vorteil von for Schleifen:

fib = numeric()

fib[1] = 0
fib[2] = 1

fib

for(i in 3:10){
  
  fib[i] = fib[i-1] + fib[i-2]
}

fib

plot(fib,
     type= "l")


#------------------------------------------
# If else
#--------------------------------------

for(i in 1:100) {
  
  if(i %% 2 == 0) {
    
    print("gerade")
    
  }else{
    
    print("ungerade")
  }
}


# Übung Schleifen mit if else
#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------




