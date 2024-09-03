png("mean_graphic.png")

x = c(1,6,3,10)
y = x-5

par(mar=c(0,0,0,0),mfrow=c(2,2))
plot(0,0,"n",xlim=c(0,5),ylim=c(-10,20),axes=F,ann=F)
th = seq(0,2*pi,pi/100)
zf = 0.2
xf = 0.45
abline(h=5,col="blue",lty=2,lwd=3)
for(i in 1:4){
    for(j in 1:x[i]){
        th2 = c(pi,seq(pi+runif(1,0,pi/80),2*pi,pi/20),2*pi)
        for(k in 1:(length(th2)-1)){
            x1 = i+xf*cos(th2[k])
            x2 = i+xf*cos(th2[k+1])
            z1 = j+zf*sin(th2[k])
            z2 = j+zf*sin(th2[k+1])
            cv = runif(1,0.8,1)
            polygon(c(x1,x2,x2,x1),c(z1,z2,z2-1,z1-1),lwd=0.5,col=hsv(0.14,0.7,cv))
        }
    polygon(i+xf*cos(th),j+zf*sin(th),col="gold")
    }
}

x = c(5,5,5,5)
plot(0,0,"n",xlim=c(0,5),ylim=c(-10,20),axes=F,ann=F)
th = seq(0,2*pi,pi/100)
zf = 0.2
xf = 0.45
abline(h=5,col="blue",lty=2,lwd=3)
for(i in 1:4){
    for(j in 1:x[i]){
        th2 = c(pi,seq(pi+runif(1,0,pi/80),2*pi,pi/20),2*pi)
        for(k in 1:(length(th2)-1)){
            x1 = i+xf*cos(th2[k])
            x2 = i+xf*cos(th2[k+1])
            z1 = j+zf*sin(th2[k])
            z2 = j+zf*sin(th2[k+1])
            cv = runif(1,0.8,1)
            polygon(c(x1,x2,x2,x1),c(z1,z2,z2-1,z1-1),lwd=0.5,col=hsv(0.14,0.7,cv))
        }
        polygon(i+xf*cos(th),j+zf*sin(th),col="gold")
    }
}

library(latex2exp)

plot(0,0,"n",xlim=c(0,1),ylim=c(0,1),axes=F,ann=F)
text(0.6,0.7,TeX("$\\frac{1+6+3+10}{4}=5$"),cex=2.7)
abline(v=1.1,lwd=5)


plot(0,0,"n",xlim=c(0,1),ylim=c(0,1),axes=F,ann=F)
text(0.5,0.7,"FIND\nTHE\nMEAN",cex=4)
abline(v=1.1,lwd=5)


dev.off()

