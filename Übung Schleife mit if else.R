#----------------------------------------
# Übung Schleife mit if else
#--------------------------------------

res = numeric()

res[1] = 3

for(i in 2:100){
  
  if(res[i-1] %% 3 == 0){
    
    res[i] = res[i-1] + 7
    
  }else{
    
    res[i] = res[i-1] - 2
  }
}

res

plot(res, type = "l")
