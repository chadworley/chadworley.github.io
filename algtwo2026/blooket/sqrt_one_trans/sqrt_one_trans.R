ques = ""
sols = ""



eqs = c("Sx+2","Sx-2",
        "S2x","SR1#2#x",
        "S-2x","SR-1#2#x",
        "Sx#+2","Sx#-2",
        "2*Sx","R1#2#Sx",
        "-2*Sx","R-1#2#Sx")

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

for(i in 1:200){
    wt = sample(1:2,1)
    ns = sample((wt-1)*6+(1:6),4)
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
        lines(x,y,col="blue",lwd=5)
    }
    dev.off()
    s = paste0(c(eqs[ns],which(ns==nc),wt),collapse="&")
    sols = paste0(sols,s,"\n")
}

fileConn<-file("p1/data.txt")
writeLines(sols, fileConn)
close(fileConn)

