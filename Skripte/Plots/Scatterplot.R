#------------------------------------------------
# Scatterplot
#------------------------------------------

plot(x = pirates$weight, 
     y = pirates$height,
     pch = 20, 
     main = "Zusammenhang Größe und Gewicht", xlab = "Gewicht", ylab = "Größe")

lines(smooth.spline(pirates$weight,
                    pirates$height,
                    spar = 0.6),
      col="red",
      lwd = 2)


cor(pirates$height, pirates$weight)

cor_coef = round(cor(pirates$height, pirates$weight), 2)

text(x = 40,
     y = 200,
     labels = paste("r = ", cor_coef, sep=""))


# ?bung Scatterplot

