#------------------------------------------------------------------
# Automatisch mehrere Daten importieren und Ergebnisse exportieren
#------------------------------------------------------------

files = list.files("C:/RKurs/Datasets/auswahl/BWI/")

paste0("C:/RKurs/Datasets/auswahl/BWI/", files[1])

res = numeric()

for(i in 1:16){
  
  tmp = read.csv(paste0("C:/RKurs/Datasets/auswahl/BWI/", files[i]))  
  
  png(paste0("C:/RKurs/Skripte/Automatisierung/BWI Ergebnisse/Bundesland_", i, ".png"),
      width = 1000,
      height = 750,
      pointsize = 20)
  
  hist(tmp$Bhd,
       main = paste("Bundesland ",i))
  
  dev.off()
    
  res[i] = mean(tmp$Bhd)
}

df = data.frame("Bundesland"=1:16, "Mittlerer Bhd"=res)

write.csv(df,
          "C:/RKurs/Skripte/Automatisierung/BWI Ergebnisse/mittlerer_bhd.csv",
          row.names = F)