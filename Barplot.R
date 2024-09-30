#---------------------------------------------
# Boxplot
#------------------------------------------

pirates = read.csv("C:/RKurs/Datasets/pirates.csv")

pirates$favorite.pirate

unique(pirates$favorite.pirate)
# -> lassen sich eventuell darstellen

tmp = table(pirates$favorite.pirate)

barplot(tmp)
# aber nicht lesbar!

barplot(tmp, las = 2)
# las kommt aus par!!! hier auf jeden Fall drauf eingehen!!!


# -> passt nicht ins plot Fenster
par(mar = c(7,4,4,2))
barplot(tmp,
        las = 2,
        col = c("steelblue", "thistle","violet","skyblue","wheat","salmon"),
        main = "Häufigkeit Lieblingspirat")
