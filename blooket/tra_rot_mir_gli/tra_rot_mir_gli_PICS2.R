library(latex2exp)
# library(tinytex)

set.seed(123)

pchgood = c(0,1,3,4,5,7,8,9,10,11,12,13,15,16,18,19,20)

sols = character()
lwd = 7
n = 300
for(i in 1:50){
    png(paste0("p1/q",sprintf("%03d",i),".png"),500,300)
    par(mar=c(0,0,0,0),oma=c(0,0,0,0))
    plot(0,0,"n",xlim=c(-10,10),ylim=c(-5,5),axes=F,ann=F)
    trmg = sample(1:4,1)
    x = runif(n,-10,-0)
    y = runif(n,-5,5)
    if(trmg==1){
        x2 = x+10
        y2 = y
    }
    if(trmg==2){
        x2 = -x
        y2 = -y
    }
    if(trmg==3){
        x2 = -x
        y2 = y
    }
    if(trmg==4){
        x2 = x+10
        y2 = -y
    }
    sizes = 2^(2^sort(runif(n,-5,2)))
    cols = hsv(runif(n,0,1),1,1)
    # points(x,y,pch=20,col=cols,cex=sizes,lwd=4)
    # points(x2,y2,pch=20,col=cols,cex=sizes,lwd=4)
    x3 = as.vector(rbind(x,x2))
    y3 = as.vector(rbind(y,y2))
    col3 = rep(cols,each=2)
    cex3 = rep(sizes,each=2)
    points(x3,y3,pch=20,col=col3,cex=cex3)
    
    dev.off()
    sols = c(sols,trmg)
}

fileConn<-file("p1_sols.txt")
writeLines(sols, fileConn)
close(fileConn)


# fileConn<-file("v2_1/vars.txt")
# writeLines(vars, fileConn)
# close(fileConn)
