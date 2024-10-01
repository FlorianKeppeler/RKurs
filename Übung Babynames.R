#-------------------------------------------------
# Übung Babynamens
#-----------------------------------------------


baby <- read.csv("C:/RKurs/Datasets/babyNamesUS.csv")

years = unique(baby$Year)

index = 1:length(years)

years[index]

# bis hierher vormachen

popular = character()

baby_numbers = numeric()


for(i in 1:length(years)){
  
  tmp = baby[baby$Year == years[i], ]
  
  popular[i] = tmp$Name[tmp$Count == max(tmp$Count)]
  
  baby_numbers[i] = sum(tmp$Count)
  
}

barplot(table(popular), las = 2)

plot(years, baby_numbers, type = "l")