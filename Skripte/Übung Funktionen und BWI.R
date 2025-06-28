#---------------------------------------------
# Übung Funktionen und BWI
#----------------------------------------

bwi <- read.csv("C:/RKurs/Datasets/auswahl/BundesWaldInventur_2012.csv")


# Funktion langsam aufbauen bis zur Endversion

volumen_pro_bl = function(x, plot_results){
  
  tmp = bwi[bwi$Bl == x, ]
  
  if(plot_results == TRUE){
    
    hist(tmp$Volumen,
         main = paste("Bundesland", x),
         xlab = "Volumen")
  }
  
  volumen = sum(tmp$Volumen)
  
  return(volumen)
}


volume_vec = numeric()

for(i in 1:16){
  
  volumen_vec[i] = volumen_pro_bl(i, plot_results = FALSE)
}

barplot(volumen_vec, names = 1:16)



