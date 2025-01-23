png("raddeg.png",300,300)

par(mar=c(0,0,0,0),pty="s")
plot(0,0,"n",axes=F,ann=F,xlim=c(-1.4,1.4),ylim=c(-1.4,1.4))

ths = c(0,30,45,60,90,120,135,150,180,210,225,240,270,300,315,330,360)
th = ths/180*pi

t = seq(0,2*pi,pi/1000)
# polygon(c(-1,-1,1,1)*1.5,c(-1,1,1,-1)*1.5,col="darkgrey")

x = seq(0,6*pi,pi/1000)
for(i in t){
    lines(x/2/pi*cos(i-x),x/2/pi*sin(i-x),col=hsv(i/2/pi,1,0.5))
}
x = seq(0,2*pi,pi/1000)
for(i in t){
    lines(x/2/pi*cos(i+x),x/2/pi*sin(i+x),col=hsv(i/2/pi,0.3,1))
}

polygon(cos(t),sin(t),lwd=4)

for(i in seq(0,2*pi,pi/2)){
    lines(c(0,cos(i)),c(0,sin(i)),lwd=3)
}
for(i in seq(pi/4,7*pi/4,pi/2)){
    lines(c(0,cos(i)),c(0,sin(i)),lwd=3,col="red",lty=2)
}
for(i in c(pi/6,pi/3)){
    for(j in seq(0,3*pi/2,pi/2)){
        k = i+j
        lines(c(0,cos(k)),c(0,sin(k)),lwd=3,col="blue",lty=3)
    }
}
for(i in c(pi/12,5*pi/12)){
    for(j in seq(0,3*pi/2,pi/2)){
        k = i+j
        lines(c(0,cos(k)),c(0,sin(k)),lwd=1,col="darkgrey",lty=1)
    }
}

points(cos(th),sin(th),pch=19,col="black",cex=2)
points(cos(th),sin(th),pch=19,col=hsv(th/2/pi,1,1))

dev.off()

