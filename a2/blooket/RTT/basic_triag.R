library(latex2exp)
png("basic.png",600,600)
par(mar=c(0,0,0,0),pty="s")
plot(0,0,"n",axes=F,ann=F,xlim=c(0,4),ylim=c(-0.5,3.5))
lines(c(3.8,3.8,4),c(0,0.2,0.2),lwd=5)

lines(c(0,4),c(0,0),col="red",lwd=8)
text(2,0,"adjacent leg",col="red",adj=c(0.5,-1),cex=3)

lines(c(4,4),c(0,3),col="blue",lwd=8)
text(4,1.5,"opposite leg",col="blue",srt=90,adj=c(0.5,-1),cex=3)

lines(c(0,4),c(0,3),col="purple",lwd=8)
text(2,1.5,"hypotenuse",col="purple",srt=atan(3/4)/pi*180,adj=c(0.5,-1),cex=3)

ang = atan(3/4)
th = seq(0,atan(3/4),pi/360)

lines(0.4*cos(th),0.4*sin(th),lwd=8)
text(0.6*cos(ang/2),0.6*sin(ang/2),TeX("$\\theta$"),cex=3)

dev.off()
