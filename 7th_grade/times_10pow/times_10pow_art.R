png("times_10pow_art.png",500,300)

widths = seq(500,20,-20)
n = length(widths)
hues = seq(0,3,length.out=n)%%1
sats = seq(0,13,length.out=n)%%1
vals = seq(0,5,length.out=n)%%1

par(mar=c(0,0,0,0))
plot(0,0,"n",axes=F,ann=F,xlim=c(-2.2,2.2),ylim=c(-2.2,2.2))

for(i in 1:length(widths)){
    th = seq(0,2*pi,pi/1080)
    x = sin(th*4)*sin(th*5)
    y = sin(th*3)+sin(th*7)
    lines(x,y,lwd=widths[i],col=hsv(hues[i],sats[i],vals[i]))
}

dev.off()


