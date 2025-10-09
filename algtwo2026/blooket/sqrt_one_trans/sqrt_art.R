png("sqrtart.png",500,300)


par(mar=c(0,0,0,0),oma=c(0,0,0,0),pty="s")
plot(0,0,'n',axes=F,ann=F,xlim=c(-5,5),ylim=c(-5,5))

for(i in -5:5){
    lines(c(-5,5),c(i,i),col="grey")
    lines(c(i,i),c(-5,5),col="grey")
}
abline(h=0)
abline(v=0)

x1 = seq(-2,5,0.01)
y1 = sqrt(x1+2)

x2 = seq(2,5,0.01)
y2 = sqrt(x2-2)

x3 = seq(0,5,0.01)
y3 = sqrt(2*x3)

x4 = seq(0,5,0.01)
y4 = sqrt(x4/2)

x5 = seq(0,-5,-0.01)
y5 = sqrt(-2*x5)

x6 = seq(0,-5,-0.01)
y6 = sqrt(-x6/2)

x7 = seq(0,5,0.01)
y7 = sqrt(x7)+2

x8 = seq(0,5,0.01)
y8 = sqrt(x8)-2

x9 = seq(0,5,0.01)
y9 = 2*sqrt(x9)

x10 = seq(0,5,0.01)
y10 = sqrt(x10)/2

x11 = seq(0,5,0.01)
y11 = -2*sqrt(x11)

x12 = seq(0,5,0.01)
y12 = -sqrt(x12)/2

xs = list(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12)
ys = list(y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12)

for(i in 1:length(xs)){
    lines(xs[[i]],ys[[i]],lwd=4,col=hsv((i-1)/11,1,1))
}



dev.off()




