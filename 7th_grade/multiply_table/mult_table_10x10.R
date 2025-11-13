pdf("mult_10x10.pdf",width = 8.5,height=11)

nc = 10
nr = 10

par(mar=c(2,2,2,2))
plot(0,0,"n",axes=F,ann=F,xlim=c(0,1),ylim=c(0,1))

for(i in 1:nc){
    text((i-0.5)/nc,1,i,adj=c(0.5,-0.2))
    text((i-0.5)/nc,0,i,adj=c(0.5,1.2))
    # if(i%%2==0){
    #       polygon(c((i-1)/nc,(i)/nc,(i)/nc,(i-1)/nc),c(0,0,1,1),col=rgb(0,0,0,0.1))
    # }
}

for(i in 1:nr){
    text(0,1-(i-0.5)/nr,i,adj=c(1.3))
    text(1,1-(i-0.5)/nr,i,adj=c(-0.3))
    
    # polygon(c(0,0,1,1),c((i-1)/nr,(i)/nr,(i)/nr,(i-1)/nr),col=hsv((i%%7)/7,1,1,0.1))
}

for(i in 1:nc){
    for(j in 1:nr){
        text((i-0.5)/nc,1-(j-1)/nr,paste0(j,"*",i," ="),cex=1,adj=c(0.5,1.6))
        text((i-0.5)/nc,1-(j-0.5)/nr,i*j,cex=1.8)
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