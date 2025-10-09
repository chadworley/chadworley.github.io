png("ID_parent_art.png",500,300)

par(mar=c(0,0,0,0),oma=c(0,0,0,0),pty="s")
plot(0,0,"n",xlim=c(-10,10),ylim=c(-10,10),axes=F,ann=F)

for(i in -10:10){
    lines(c(-10,10),c(i,i),col="grey")
    lines(c(i,i),c(-10,10),col="grey")
}
abline(h=0,lwd=1.3)
abline(v=0,lwd=1.3)

lwd = 8


x = seq(-10,log(10)/log(2),0.01)
y = 2^x
lines(y,x,lwd=lwd,col="orange")

x = seq(-sqrt(10),sqrt(10),0.01)
y = x^2
lines(x,y,lwd=lwd,col="yellow")

x = seq(-10^(1/3),10^(1/3),0.01)
y = x^3
lines(x,y,lwd=lwd,col="green")

x = seq(-10,log(10)/log(2),0.01)
y = 2^x
lines(x,y,lwd=lwd,col="blue")

x = seq(-10,10,0.01)
y = abs(x)
lines(x,y,lwd=lwd,col="purple")


x = seq(-10,10,0.01)
y = sign(x)*abs(x)^(1/3)
lines(x,y,lwd=lwd,col="violet")


x = seq(0,10,0.01)
y = sqrt(x)
lines(x,y,lwd=lwd,col="red")


dev.off()