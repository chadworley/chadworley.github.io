
png("parallel.png",480,360)

par(mar=c(0,0,0,0))

plot(0,0,"n",xlim=c(0,10),ylim=c(0,10),axes=F,ann=F)

for(i in -100:100){
    abline(i/9,1,col=hsv((i+100)/400,((i+100)/10)%%1,1),lwd=3)
}

dev.off()
