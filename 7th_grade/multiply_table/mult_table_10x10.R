pdf("mult_20x40.pdf",width = 8.5,height=11)

nc = 20
nr = 40

par(mar=c(1,1,1,1))
plot(0,0,"n",axes=F,ann=F,xlim=c(0,1),ylim=c(0,1))
for(i in 1:nc){
    for(j in 1:nr){
        text((i-0.5)/nc,1-(j-0.5)/nr,i*j,cex=1,col=hsv((log(i*j/3+exp(1)))%%1,1,0.5))
    }
}
for(i in 0:nr){
    if(i%%5==0){
        # abline(h=i/nr,lwd=3)
        lines(c(0,1),c(i/nr,i/nr),lwd=3)
    # } else if(i%%2==0){
    #     abline(h=i/nr,lwd=2)
    } else {
        lines(c(0,1),c(i/nr,i/nr),lwd=1)
    }
}
for(i in 0:nc){
    if(i%%5==0){
        # abline(v=i/nc,lwd=3)
        lines(c(i/nc,i/nc),c(0,1),lwd=3)
    # } else if(i%%2==0){
    #     abline(v=i/nc,lwd=2)
    } else {
        # abline(v=i/nc)
        lines(c(i/nc,i/nc),c(0,1),lwd=1)
    }
}


dev.off()