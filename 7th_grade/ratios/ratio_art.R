png("ratio.png",1200,800)

col1 = rgb(0,0,0)
col2 = rgb(0.7,0.15,0.15)
col3 = rgb(1,1,0.95)

par(mar=c(0,0,0,0))
plot(0,0,"n",xlim=c(-12,12),ylim=c(-8,8),axes=F,ann=F)

n = 6001
thetas = seq(0,6*2*pi,length.out=n)
rs = exp(seq(-5,3,length.out=n))
rs2 = exp(seq(-5,3,length.out=n))*1.5
rs3 = exp(seq(-5,3,length.out=n))*2.5

polygon(c(-13,-13,13,13),c(-9,9,9,-9),col1)

for(i in 1:(n-1)){
    x1 = rs[i]*cos(thetas[i])
    y1 = rs[i]*sin(thetas[i])
    x2 = rs[i+1]*cos(thetas[i+1])
    y2 = rs[i+1]*sin(thetas[i+1])
    x3 = rs2[i]*cos(thetas[i])
    y3 = rs2[i]*sin(thetas[i])
    x4 = rs2[i+1]*cos(thetas[i+1])
    y4 = rs2[i+1]*sin(thetas[i+1])
    x5 = rs3[i]*cos(thetas[i])
    y5 = rs3[i]*sin(thetas[i])
    x6 = rs3[i+1]*cos(thetas[i+1])
    y6 = rs3[i+1]*sin(thetas[i+1])
    polygon(c(x1,x2,x4,x3),c(y1,y2,y4,y3),col=col2,border = col2)
    polygon(c(x3,x4,x6,x5),c(y3,y4,y6,y5),col=col3,border = col3)
}

dev.off()
