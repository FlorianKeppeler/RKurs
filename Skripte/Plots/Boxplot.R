#--------------------------------------
# Boxplot
#------------------------------------

pirates = read.csv("C:/RKurs/Datasets/auswahl/pirates.csv")

names(pirates)

boxplot(pirates[,c("parrots", "tattoos")])


# stimmiger w?re:

boxplot(pirates$weight[pirates$sex == "male"], pirates$weight[pirates$sex == "female"],
        names = c("Piraten", "Piratinnen"),
        outline = FALSE,
        col = c("steelblue", "salmon"),
        ylab = "Gewicht",
        main = "Gewichtsverteilung nach Geschlecht")
