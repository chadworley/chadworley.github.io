
png("gcf.png",400,400)
par(mar=c(0,0,0,0))
plot(0,0,"n",axes=F,ann=F,xlim=c(0,10),ylim=c(0,10))

for(i in 1:10){
    for(j in 1:10){
        polygon(c(i-1,i-1,i,i),c(j-1,j,j,j-1),col=hsv((i*j/100)%%1,1,(i+j)%%2))
    }
}



dev.off()