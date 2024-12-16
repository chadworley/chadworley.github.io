pdf("protractor.pdf",8.5,11)

par(mar=c(0,0,0,0),pty="s")
plot(0,0,"n",axes=F,ann=F,xlim=c(-1,1),ylim=c(-1,1))
th = seq(0,360,1)
for(i in th){
    if(i%%10==0){
        lines(c(0.8,1)*cos(i/180*pi),
              c(0.8,1)*sin(i/180*pi),
              lwd=2)
    } else if(i%%5==0){
        lines(c(0.9,1)*cos(i/180*pi),
              c(0.9,1)*sin(i/180*pi),
              lwd=1.5)
    } else {
        lines(c(0.95,1)*cos(i/180*pi),
              c(0.95,1)*sin(i/180*pi),
              lwd=1)
    }
}
for(i in th){
    if(i%%10==0){
        lines(c(0.8,1)*cos(i/180*pi)/2,
              c(0.8,1)*sin(i/180*pi)/2,
              lwd=2)
    } else if(i%%5==0){
        lines(c(0.9,1)*cos(i/180*pi)/2,
              c(0.9,1)*sin(i/180*pi)/2,
              lwd=1.5)
    } else {
        lines(c(0.95,1)*cos(i/180*pi)/2,
              c(0.95,1)*sin(i/180*pi)/2,
              lwd=1)
    }
}

for(i in seq(0,330,30)){
    lines(c(0,1)*cos(i/180*pi),
          c(0,1)*sin(i/180*pi),
          lwd=2)
    lines(c(0,1)*cos(i/180*pi+pi/12),
          c(0,1)*sin(i/180*pi+pi/12),
          lwd=1,
          lty=3)
}

dev.off()