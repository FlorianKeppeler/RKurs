#--------------------------------------
# Boxplot
#------------------------------------

pirates = read.csv("C:/RKurs/Datasets/pirates.csv")

names(pirates)

boxplot(pirates[,c("parrots", "tattoos")])

# stimmiger wäre:

boxplot(pirates$weight[pirates$sex == "male"], pirates$weight[pirates$sex == "female"],
        names = c("Pirat", "Piratin"),
        outline = FALSE,
        col = c("steelblue", "thistle"),
        main = "Gewichtsverteilung nach Geschlecht")
