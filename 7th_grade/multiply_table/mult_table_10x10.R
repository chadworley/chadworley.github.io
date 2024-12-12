pdf("mult_10x10.pdf",width = 8.5,height=11)

nc = 10
nr = 20

par(mar=c(0,0,0,0))
plot(0,0,"n",axes=F,ann=F,xlim=c(0,1),ylim=c(0,1))
for(i in 1:nc){
    for(j in 1:nr){
        text((i-0.5)/nc,1-(j-0.5)/nr,i*j,cex=2,col=hsv((log(i*j/3+exp(1)))%%1,1,0.5))
    }
}
for(i in 0:nr){
    if(i%%5==0){
        abline(h=i/nr,lwd=3)
    # } else if(i%%2==0){
    #     abline(h=i/nr,lwd=2)
    } else {
        abline(h=i/nr,lwd=1)
    }
}
for(i in 0:nc){
    if(i%%5==0){
        abline(v=i/nc,lwd=3)
    # } else if(i%%2==0){
    #     abline(v=i/nc,lwd=2)
    } else {
        abline(v=i/nc)
    }
}


dev.off()