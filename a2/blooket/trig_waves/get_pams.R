# Give graph of sin or cos
# Ask for amplitude, period, or midline

ques = ""
sols = ""
pw = 500
ph = 300
dom = 10
ran = 6

for(i in 1:300){
    xmin = sample(-18:-2,1)
    xmax = xmin+20
    P = sample(c(4,6,8,10),1)
    A = sample(c(2,3,4),1)*sample(c(-1,1),1)
    D = sample(c(-2,-1,1,2),1)
    cs = sample(c("cos","sin"))
    x = seq(xmin,xmax,0.05)
    if(cs[1]=="cos"){
        y = A*cos(2*pi/P*x)+D
        st = paste0("y=",A,"\\cos\\left(\\frac{\\pi}{",round(P/2),"}t\\right)+",D)
        st = gsub("+-","-",st,fixed=T)
    }
    if(cs[1]=="sin"){
        y = A*sin(2*pi/P*x)+D
        st = paste0("y=",A,"\\sin\\left(\\frac{\\pi}{",round(P/2),"}t\\right)+",D)
        st = gsub("+-","-",st,fixed=T)
    }
    qt = sample(1:3,1)
    if(qt==1){
        q = "Find the amplitude."
        s = paste0(abs(A))
    }
    if(qt==2){
        q = "Find the period."
        s = paste0(abs(P))
    }
    if(qt==3){
        q = "Find the midline."
        s = paste0("y=",D,collapse="")
    }
    
    png(paste0("p2/p_",sprintf("%04d",i),".png"),500,300)
    par(mar=c(0,0,0,0))
    plot(0,0,"n",axes=F,ann=F,xlim=c(xmin,xmax),ylim=c(-6,6),asp=1)
    for(xx in seq(xmin,xmax,1)){
        lines(c(xx,xx),c(-6,6),col="grey",lwd=0.8)
        if(xx%%5==0){
            lines(c(xx,xx),c(-6,6),col="darkgrey",lwd=1.2) 
        }
    }
    for(yy in seq(-6,6,1)){
        lines(c(xmin,xmax),c(yy,yy),col="grey",lwd=0.8)    
    }
    for(yy in seq(-5,5,5)){
        lines(c(xmin,xmax),c(yy,yy),col="darkgrey",lwd=1.2)    
    }
    arrows(xmin-0.4,0,xmax+0.4,0,0.1,15,3,lwd=1.5)
    arrows(0,-6.4,0,6.4,0.1,15,3,lwd=1.5)
    text(xmax+0.4,0,"t",adj=c(0.5,-0.3))
    text(1,0,"1",adj=c(0.5,1.3))
    # text(-10,0,"-10",adj=c(0.5,1.3))
    text(0,6.3,"y",adj=c(-0.4,0.5))
    text(0,1,"1",adj=c(1.3,0.5))
    # text(0,-5,"-5",adj=c(1.3,0.5))
    
    lines(x,y,col="blue",lwd=2)
    ttt = seq(-20*P,20*P,P/4)
    ttt = ttt[ttt>=xmin]
    ttt = ttt[ttt<=xmax]
    if(cs[1]=="cos"){
        points(ttt,A*cos(2*pi/P*ttt)+D,pch=19,col="blue")
    } else {
        points(ttt,A*sin(2*pi/P*ttt)+D,pch=19,col="blue")
    }
    dev.off()
    sols = paste0(sols,s,"\n")
    ques = paste0(ques,q,"\n")
}


fileConn<-file("p2/sols.txt")
writeLines(sols, fileConn)
close(fileConn)

fileConn<-file("p2/ques.txt")
writeLines(ques, fileConn)
close(fileConn)
