ques = ""
sols = ""

#1  |x|
#2  sqrt(x) Sx
#3  (x)^2
#4  cbrt(x) Cx
#5  (x)^3
#6  2^x
#7  3^x
#8  log2(x) Wx
#9  log3(x) Hx
#10 1/x     Rx
#11 cos(x)
#12 sin(x)


for(i in 1:200){
    ns = sample(1:12,4)
    nc = sample(ns,1)
    x = xs[[nc]]
    y = ys[[nc]]
    png(paste0("p1/p_",sprintf("%04d",i),".png"),500,300)
    par(mar=c(0,0,0,0),pty="s")
    plot(0,0,"n",axes=F,ann=F,xlim=c(-5,5),ylim=c(-5,5))
    for(xx in seq(-5,5,1)){
        lines(c(xx,xx),c(-5,5),col="grey",lwd=0.8)
        if(xx%%5==0){
            lines(c(xx,xx),c(-5,5),col="darkgrey",lwd=1.2) 
        }
    }
    for(yy in seq(-5,5,1)){
        lines(c(-5,5),c(yy,yy),col="grey",lwd=0.8)    
    }
    for(yy in seq(-5,5,5)){
        lines(c(-5,5),c(yy,yy),col="darkgrey",lwd=1.2)    
    }
    arrows(-5.4,0,5.4,0,0.1,15,3,lwd=1.5)
    arrows(0,-5.4,0,5.4,0.1,15,3,lwd=1.5)
    text(5.2,0,"x",adj=c(0.5,-0.4))
    text(1,0,"1",adj=c(0.5,1.3))
    text(0,5.3,"y",adj=c(-0.4,0.5))
    text(0,1,"1",adj=c(1.3,0.5))
    for(ii in 1:length(x)){
        lines(x[[ii]],y[[ii]],col="blue",lwd=4)
    }
    dev.off()
    s = paste0(c(ns,which(ns==nc)),collapse="&")
    sols = paste0(sols,s,"\n")
}

fileConn<-file("p1/data.txt")
writeLines(sols, fileConn)
close(fileConn)

