#line graph
par(mfrow = c(1,1))
gp_levels <- levels(PlantGrowth$group)
group_len=length(gp_levels)

xrange <- range(1:nrow(PlantGrowth)/group_len) 
yrange <- range(PlantGrowth$weight)

df_tilte <-"PlantGrowth Data"

plot(xrange, yrange, type="n", xlab="Cases", ylab="Dried weight of plants", las=1, main = df_tilte ) 

colors <- c("orange", "greenyellow","deepskyblue") 
linetype <- c(1:group_len) 
plotchar <- seq(18,18+group_len,1)

for (i in 1:group_len) { 
  pg <- subset(PlantGrowth,group==gp_levels[i] ) 
  lines(pg$weight, type="b", lwd=3.5,
        lty=linetype[i], col=colors[i], pch=plotchar[i]) 
} 
legend("bottomright", "(x,y)", gp_levels[(1:group_len)], cex=1, col=colors,
       pch=plotchar, lty=linetype, title="Group")