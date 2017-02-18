#Box plot
par(mfrow = c(1,1))
df_tilte <-"PlantGrowth Data"
colors <-c("orange", "greenyellow","deepskyblue")
boxplot(PlantGrowth$weight ~ PlantGrowth$group, main = df_tilte, las=1
        ,ylab="Dried weight of plants" , xlab="Group"
        ,boxwex = 0.6 , col =colors )