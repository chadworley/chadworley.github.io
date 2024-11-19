pdf("sunrise_colors.pdf",8,4)

par(mar=c(0,0,0,0))

plot(0,0,"n",xlim=c(0,1),ylim=c(0,1),axes=F,ann=F)

cols = c(rgb(0,0,0),
         hsv(0.06,0.75,1),
         hsv(0.9,0.2,0.7),
         hsv(0.55,0.2,1))

for(i in 1:4){
    polygon(c(0,0,1,1),c((i-1)*0.25,i*0.25,i*0.25,(i-1)*0.25),col=cols[i],border=F)
}

dev.off()
