png("p3_art.png",500,300)

par(mfrow=c(2,1),oma=c(0,0,0,0),mar=c(4,0,1,3))

p1 = 25
p2 = -40
p3 = p1+p2
nums = c(p1,p2,p3)

xmin = floor(min(c(nums-10,-10))/10)*10
xmax = ceiling(max(c(nums+10,+10))/10)*10
plot(0,0,"n",xlim=c(xmin,xmax),ylim=c(0,1),axes=F,ann=F)
axis(1)
abline(v=0)
arrows(0,0.66,p1,0.66,0.1,15,2,col="red",lwd=4)
arrows(0,0.33,p2,0.33,0.1,15,2,col="blue",lwd=4)


xmin = floor(min(c(nums-10,-10))/10)*10
xmax = ceiling(max(c(nums+10,10))/10)*10
plot(0,0,"n",xlim=c(xmin,xmax),ylim=c(0,1),axes=F,ann=F)
axis(1)
abline(v=0)
lines(c(p1,p1),c(0.75,0.5),lty=3)
arrows(0,0.75,p1,0.75,0.1,15,2,col="red",lwd=4)
arrows(p1,0.50,p1+p2,0.50,0.1,15,2,col="blue",lwd=4)
arrows(0,0.25,p1+p2,0.25,0.1,15,2,col="purple",lwd=6)


dev.off()