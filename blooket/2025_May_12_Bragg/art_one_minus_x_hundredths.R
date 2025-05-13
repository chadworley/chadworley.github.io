png("one_minus_art.png",500,300)

par(mar=c(0,0,0,0))
plot(0,0,"n",xlim=c(0,5),ylim=c(0,3),axes=F,ann=F)

polygon(c(-1,-1,6,6),c(-1,4,4,-1),col="black")
thmax = 200*pi
ths = seq(0,thmax,pi/300)
nn = length(ths)
iii = 1:nn
hues = (iii/122)%%1
points(2.5+ths/thmax*4*cos(ths),
       1.5+ths/thmax*4*sin(ths),
       col=hsv(hues,rep(1,nn),rep(0.5,nn)),pch=19,cex=3)


r = 1.4
polygon(c(2.5-r,2.5-r,2.5+r,2.5+r),c(1.5-r,1.5+r,1.5+r,1.5-r),col="white",border="black",lwd=8)
polygon(c(2.5-r,2.5-r,2.5+r,2.5+r),c(1.5-r,1.5+r,1.5+r,1.5-r),col="white",border="white")
for(i in 0:10){
    lines(c(2.5-r,2.5+r),c(1.5-r+2*r*i/10,1.5-r+2*r*i/10))
    lines(c(2.5-r+2*r*i/10,2.5-r+2*r*i/10),c(1.5-r,1.5+r))
}
for(i in 0:99){
    row = i%%10
    col = i%/%10
    x = 2.5-r+2*r*col/10+r/10
    y = 1.5-r+2*r*row/10+r/10
    rr = r/10*0.7
    if(i<76){
        lines(c(x-rr,x+rr),c(y-rr,y+rr),col="red",lwd=2)
        lines(c(x-rr,x+rr),c(y+rr,y-rr),col="red",lwd=2)
    } else {
        polygon(c(x-r/10,x-r/10,x+r/10,x+r/10),c(y-r/10,y+r/10,y+r/10,y-r/10),col=rgb(0,0,1,0.5))
    }
}

dev.off()
