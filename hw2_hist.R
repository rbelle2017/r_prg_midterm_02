#Histogram
par(mfrow = c(1,2)) 
df_tilte <- "Old Faithful Geyser Data"
x_lim <-  c(min(faithful$eruption)-1, max(faithful$eruption)+1)
h1 <- hist(faithful$eruptions, main = df_tilte, xlim=x_lim, xlab = "Eruption time (min)"
           , las=1, col ="deepskyblue" , border = "darkslateblue", ylim=c(0,80))
text(h1$mids,h1$counts,labels=h1$counts, adj=c(0.5, -0.5))

x_lim <-  c(min(faithful$waiting)-10, max(faithful$waiting)+10)
h2 <- hist(faithful$waiting, main = df_tilte,breaks=10, xlim=x_lim, xlab = "Waiting time to next eruption (min)"
           , las=1,col = "lawngreen", border = "darkslateblue", ylim=c(0,65))
text(h2$mids,h2$counts,labels=h2$counts, adj=c(0.5, -0.5))