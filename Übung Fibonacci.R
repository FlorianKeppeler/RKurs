#----------------------------------------------------
# Übung Fibonacci Folge
#--------------------------------------------

# als While Schleife
#------------------------------

alt = 0

neu = 1

count = 0

while(neu < 150) {
  
  tmp = alt + neu
  
  alt = neu
  
  neu = tmp
  
  print(neu)
  
  count = count + 1
}

neu

count

#---------------------------
# als for Schleife

a = 0

b = 1

for(i in 1:100) {
  
  tmp = a + b
  
  a = b
  
  b = tmp
  
}

b

