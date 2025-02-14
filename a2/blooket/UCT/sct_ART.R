png("sct_art.png",640,480)
par(mar=c(0,0,0,0),pty="s")

plot(0,0,"n",xlim=c(-1.4,1.4),ylim=c(-1.4,1.4),axes=F,ann=F)

lwd = 10
x = -0.6
y = 0.8
th = atan2(y,x)
abline(h=y,col="red",lwd=lwd)
abline(v=x,col="blue",lwd=lwd)
abline(0,y/x,col="maroon",lwd=lwd)
# points(x,y,pch=19,col="white",cex=2.5)
# points(x,y,pch=19,col="black",cex=2)
th = seq(0,2*pi,pi/360)
lines(cos(th),sin(th),col="grey",lwd=lwd)
tt = seq(0,atan2(y,x),pi/360)
lines(cos(tt),sin(tt),lwd=lwd,col="darkorange")
points(x,y,pch=19,col="black",cex=5)
points(x,y,pch=19,col="yellow",cex=2.5)
arrows(-1.2,0,1.2,0,0.2,30,3,lwd=lwd)
arrows(0,-1.2,0,1.2,0.2,30,3,lwd=lwd)

points(-x,y,pch=19,col="black",cex=3)
points(x,-y,pch=19,col="black",cex=3)
points(-x,-y,pch=19,col="black",cex=3)

cex=4
qd = 1
text(qd,qd,"I",cex=cex)
text(-qd,qd,"II",cex=cex)
text(-qd,-qd,"III",cex=cex)
text(qd,-qd,"IV",cex=cex)



dev.off()


