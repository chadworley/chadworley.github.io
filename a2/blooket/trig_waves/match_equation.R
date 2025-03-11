# Give graph of sin or cos
# Ask for eq

# choose between -A*sin, A*sin, -A*cos, A*cos
# choose correct A
# choose correct P
# choose correct D
# get right A and P
# get right A and D
# get right P and D

ques = ""
sols = ""
pw = 500
ph = 300
dom = 10
ran = 6

mkeq = function(A,P,D,cs){
    if(cs=="cos"){
        st = paste0("y=",A,"C(FP#",round(P/2),"#t)+",D)
    } else {
        st = paste0("y=",A,"S(FP#",round(P/2),"#t)+",D)
    }
    st = gsub("+-","-",st,fixed=T)
    return(st)
}

for(i in 1:200){
    xmin = sample(-18:-2,1)
    xmax = xmin+20
    P = sample(c(4,6,8,10),1)
    A = sample(c(2,3,4),1)*sample(c(-1,1),1)
    D = sample(c(-2,-1,1,2),1)
    cs = sample(c("cos","sin"))
    x = seq(xmin,xmax,0.05)
    ceq = mkeq(A,P,D,cs[1])
    if(cs[1]=="cos"){
        y = A*cos(2*pi/P*x)+D
    }
    if(cs[1]=="sin"){
        y = A*sin(2*pi/P*x)+D
    }
    pt = sample(1:9,1)
    if(pt==1){
        eq1 = mkeq(abs(A),P,D,"sin")
        eq2 = mkeq(abs(A),P,D,"cos")
        eq3 = mkeq(-abs(A),P,D,"sin")
        eq4 = mkeq(-abs(A),P,D,"cos")
    }
    if(pt==2){
        As = sample(c(-4,-3,-2,2,3,4),4)
        if(!(A %in% As)){
            As[sample(1:4,1)] = A
        }
        As = sort(As)
        eq1 = mkeq(As[1],P,D,cs[1])
        eq2 = mkeq(As[2],P,D,cs[1])
        eq3 = mkeq(As[3],P,D,cs[1])
        eq4 = mkeq(As[4],P,D,cs[1])
    }
    if(pt==3){
        Ps = c(4,6,8,10)
        eq1 = mkeq(A,4,D,cs[1])
        eq2 = mkeq(A,6,D,cs[1])
        eq3 = mkeq(A,8,D,cs[1])
        eq4 = mkeq(A,10,D,cs[1])
    }
    if(pt==4){
        eq1 = mkeq(A,P,-2,cs[1])
        eq2 = mkeq(A,P,-1,cs[1])
        eq3 = mkeq(A,P,1,cs[1])
        eq4 = mkeq(A,P,2,cs[1])
    }
    if(pt==5){
        eq1 = mkeq(-abs(A),P,-abs(D),cs[1])
        eq2 = mkeq(-abs(A),P,abs(D),cs[1])
        eq3 = mkeq(abs(A),P,-abs(D),cs[1])
        eq4 = mkeq(abs(A),P,abs(D),cs[1])
    }
    if(pt==6){
        eq1 = mkeq(A,P,-abs(D),"sin")
        eq2 = mkeq(A,P,abs(D),"sin")
        eq3 = mkeq(A,P,-abs(D),"cos")
        eq4 = mkeq(A,P,abs(D),"cos")
    }
    if(pt==7){
        As = sample(c(-4,-3,-2,2,3,4),2)
        if(!(A %in% As)){
            As[sample(1:2,1)] = A
        }
        As = sort(As)
        Ps = sample(c(4,6,8,10),2)
        if(!(P %in% Ps)){
            Ps[sample(1:2,1)] = P
        }
        Ps = sort(Ps)
        eq1 = mkeq(As[1],Ps[1],D,cs[1])
        eq2 = mkeq(As[1],Ps[2],D,cs[1])
        eq3 = mkeq(As[2],Ps[1],D,cs[1])
        eq4 = mkeq(As[2],Ps[2],D,cs[1])
    }
    if(pt==8){
        Ps = sample(c(4,6,8,10),2)
        if(!(P %in% Ps)){
            Ps[sample(1:2,1)] = P
        }
        Ps = sort(Ps)
        eq1 = mkeq(A,Ps[1],D,"sin")
        eq2 = mkeq(A,Ps[2],D,"sin")
        eq3 = mkeq(A,Ps[1],D,"cos")
        eq4 = mkeq(A,Ps[2],D,"cos")
    }
    if(pt==9){
        Ps = sample(c(4,6,8,10),2)
        if(!(P %in% Ps)){
            Ps[sample(1:2,1)] = P
        }
        Ps = sort(Ps)
        eq1 = mkeq(-abs(A),Ps[1],D,cs[1])
        eq2 = mkeq(-abs(A),Ps[2],D,cs[1])
        eq3 = mkeq(abs(A),Ps[1],D,cs[1])
        eq4 = mkeq(abs(A),Ps[2],D,cs[1])
    }
    eqs = c(eq1,eq2,eq3,eq4)
    ca = which(eqs==ceq)
    
    png(paste0("p3/p_",sprintf("%04d",i),".png"),500,300)
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
    text(0,6.3,"y",adj=c(-0.4,0.5))
    text(0,1,"1",adj=c(1.3,0.5))
    lines(x,y,col="blue",lwd=2)
    dev.off()
    s = paste0(c(eqs,ca),collapse="&")
    sols = paste0(sols,s,"\n")
}

fileConn<-file("p3/data.txt")
writeLines(sols, fileConn)
close(fileConn)

