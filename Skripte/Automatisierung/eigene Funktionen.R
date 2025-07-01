

pirates = read.csv("C:/RKurs/Datasets/auswahl/pirates.csv")

head(pirates)

plot(x = pirates$weight, 
     y = pirates$height,
     pch = 20, 
     main = "Zusammenhang Größe und Gewicht", xlab = "Gewicht", ylab = "Größe")

trendlinie = smooth.spline(pirates$weight,
                           pirates$height,
                           spar = 0.6)

lines(trendlinie,
      col="red",
      lwd = 2)


# wird schnell unübersichtlich...

create_scatterplot = function(name_of_x, name_of_y){
  
  
  if(typeof(pirates[,name_of_x]) == "character" || typeof(pirates[,name_of_y]) == "character"){
    
    print(paste(name_of_x,"oder", name_of_y, "sind nicht numerisch"))
    
  }else{
    
    plot(x = pirates[,name_of_x], 
         y = pirates[,name_of_y],
         pch = 20, 
         main = paste(name_of_y, " ~ ", name_of_x, sep = ""),
         xlab = name_of_x,
         ylab = name_of_y)
    
    trendlinie = smooth.spline(pirates[,name_of_x],
                               pirates[,name_of_y],
                               spar = 0.6)
    
    lines(trendlinie,
          col="red",
          lwd = 2)
    
    cor(pirates[,name_of_x], pirates[,name_of_y])
    
    cor_coef = round(cor(pirates[,name_of_x], pirates[,name_of_y]), 2)
    
    return (cor_coef)  
    
  }
}


create_scatterplot(name_of_x = "parrots",
                   name_of_y =  "fav.pixar")
