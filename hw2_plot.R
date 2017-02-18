#Scatter diagram
par(mfrow = c(1,1)) 
df_tilte <- "Old Faithful Geyser Data"
x_lim <-  c(min(faithful$eruption), max(faithful$eruption))
y_lim <-  c(min(faithful$waiting), max(faithful$waiting))

plot(faithful$eruptions, faithful$waiting,
     main =df_tilte, 
     xlab = "Eruption time (min)", ylab = "Waiting time to next eruption (min)",
     fg="green4", cex =1.5, adj =0.5, las=1, col="blue", pch=10, xlim=x_lim, ylim = y_lim
)
lines(lowess(faithful))