ques = ""
sols = ""

#1  abs(x)
#2  sqrt(x)
#3  x^2
#4  cbrt(x)
#5  x^3
#6  2^x
#7  3^x
#8  log2(x)
#9  log3(x)
#10 1/x
#11 cos(x)
#12 sin(x)

# abs(x)
x1 = list(seq(-5,5,0.1))
y1 = list(abs(x1[[1]]))

# sqrt(x)
x2 = list(seq(0,5,0.01))
y2 = list(sqrt(x2[[1]]))

# x^2
x3 = list(seq(-sqrt(5),sqrt(5),0.01))
y3 = list(x3[[1]]^2)

# cbrt(x)
y4 = list(seq(-5^(1/3),5^(1/3),0.01))
x4 = list(y4[[1]]^3)

# x^3
x5 = list(seq(-5^(1/3),5^(1/3),0.01))
y5 = list(x5[[1]]^3)

# 2^x
x6 = list(seq(-5,log(5)/log(2),0.01))
y6 = list(2^x6[[1]])

# 3^x
x7 = list(seq(-5,log(5)/log(3),0.01))
y7 = list(3^x7[[1]])

# log2(x)
y8 = list(seq(-5,log(5)/log(2),0.01))
x8 = list(2^y8[[1]])

# log3(x)
y9 = list(seq(-5,log(5)/log(3),0.01))
x9 = list(3^y9[[1]])

# 1/x
x10 = list(seq(-5,-1/5,0.01),seq(1/5,5,0.01))
y10 = list(1/x10[[1]],1/x10[[2]])

# cos(x)
x11 = list(seq(-5,5,0.1))
y11 = list(cos(x11[[1]]))

# sin(x)
x12 = list(seq(-5,5,0.1))
y12 = list(sin(x12[[1]]))

xs = list(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12)
ys = list(y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12)

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

