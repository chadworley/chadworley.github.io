library(latex2exp)
# library(tinytex)

set.seed(123)

pchgood = c(0,1,3,4,5,7,8,9,10,11,12,13,15,16,18,19,20)

sols = character()
lwd = 7
for(i in 1:1000){
    png(paste0("p1/q",sprintf("%03d",i),".png"),500,300)
    par(mar=c(0,0,0,0),oma=c(0,0,0,0))
    plot(0,0,"n",xlim=c(-10,10),ylim=c(-5,5),axes=F,ann=F)
    trmg = sample(1:4,1)
    x = sample(-1:-9,7)
    y = sample(-4:4,7)
    pol = sample(1:2,1)
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
    if(pol==1){
        hue = runif(1,0,1)
        lines(x,y,lwd=lwd,col=hsv(hue,1,0.8))
        lines(x2,y2,lwd=lwd,col=hsv(hue,1,0.8))
    } else {
        pchs = sample(pchgood,length(x))
        points(x,y,pch=pchs,col=hsv((1:length(x))/length(x),1,1),cex=5,lwd=4)
        points(x2,y2,pch=pchs,col=hsv((1:length(x))/length(x),1,1),cex=5,lwd=4)
    }
    dev.off()
    sols = c(sols,trmg)
}

fileConn<-file("p1_sols.txt")
writeLines(sols, fileConn)
close(fileConn)


# fileConn<-file("v2_1/vars.txt")
# writeLines(vars, fileConn)
# close(fileConn)
