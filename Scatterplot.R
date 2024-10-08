#------------------------------------------------
# Scatterplot
#------------------------------------------

plot(x = pirates$weight, 
     y = pirates$height,
     pch = 20, 
     main = "Zusammenhang H�he und Gewicht", xlab = "Gewicht", ylab = "H�he")

lines(smooth.spline(pirates$weight,
                    pirates$height,
                    spar = 0.6),
      col="red",
      lwd = 2)


cor(pirates$height, pirates$weight)

cor_coef = round(cor(pirates$height, pirates$weight), 2)

text(x = 40,
     y = 200,
     labels = cor_coef)


# �bung Scatterplot

