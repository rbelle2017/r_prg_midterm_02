#Bar chart
par(mfrow = c(1,1))
df_tilte <-"PlantGrowth Data"
gp_levels <- levels(PlantGrowth$group)
group_len <- length(gp_levels)
colors <- c("orange", "greenyellow","deepskyblue")
data1 <- matrix(data = NA, nrow = 3, ncol = 10)
for (i in 1:group_len) {
  data1[i,] <- subset(PlantGrowth,group==gp_levels[i])$weight
}
h1 <- barplot( data1, main=df_tilte,  xlab="Cases", ylim=c(0,9), las=1
               , col = colors
               , names.arg=c(1:10), ylab="Dried weight of plants"
               , legend.text = gp_levels, args.legend = list(x = "topright",title="Group"), beside=TRUE)

text(x = h1 ,y=data1, label = data1, adj=c(0.5, -0.5))
