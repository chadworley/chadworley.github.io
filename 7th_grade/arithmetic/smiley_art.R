png("smiley.png",500,300)

par(mar=c(0,0,0,0))
plot(0,0,"n",xlim=c(-5,5),ylim=c(-3,3),ann=F,axes=F)

for(i in seq(-4,4,0.01)){
    abline(h=i,col=hsv((i/7)%%1,0.8,0.8))
}

th = seq(0,2*pi,pi/1000)
polygon(2*cos(th),2*sin(th),col="yellow",lwd=5)
polygon(cos(th)/3+0.8,sin(th)/2+0.3,col="black")
polygon(cos(th)/3-0.8,sin(th)/2+0.3,col="black")

th2 = seq(3*pi/2-pi/3,3*pi/2+pi/3,pi/1000)

polygon(c(cos(th2),rev(cos(th2))),c(sin(th2),1.3*sin(th2)-0.3),col="black")

dev.off()
