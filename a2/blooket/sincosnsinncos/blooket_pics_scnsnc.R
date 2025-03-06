library(latex2exp)
# library(tinytex)

sols = ""
vars = ""
pw = 500
ph = 300
dom = 3*pi
ran = dom*5/3

xs = seq(-6*pi,6*pi,pi/360)
y1 = sin(xs)
y2 = cos(xs)
y3 = -sin(xs)
y4 = -cos(xs)
ys = list(y1,y2,y3,y4)
ym = 9*pi/5/2
for(i in 1:4){
    y = ys[[i]]
    for(j in 1:5){
        which_type = sample(1:4,1)
        xmin = -pi/2*j
        xmax = xmin+3*pi
        xmid = mean(c(xmin,xmax))
        xx = xs[abs(xs-xmid)<(1.5*pi)]
        yy = y[abs(xs-xmid)<(1.5*pi)]
        png(paste0("p1/p_",i,"_",j,".png"),500,300)
        par(mar=c(0,0,0,0))
        plot(0,0,"n",xlim=c(xmin,xmax),ylim=c(-ym,ym),axes=F,ann=F,asp=1)
        for(xl in seq(xmin,xmax,pi/12)){
            lines(c(xl,xl),c(-ym,ym),col="lightgrey",lwd=0.8)
        }
        for(xl in seq(xmin,xmax,pi/4)){
            lines(c(xl,xl),c(-ym,ym),col="grey",lwd=1)
        }
        for(xl in seq(xmin,xmax,pi/2)){
            lines(c(xl,xl),c(-ym,ym),col="darkgrey",lwd=1.3)
        }
        for(yl in seq(-3,3,0.1)){
            lines(c(xmin,xmax),c(yl,yl),col="lightgrey",lwd=0.8)
        }
        for(yl in seq(-3,3,0.5)){
            lines(c(xmin,xmax),c(yl,yl),col="grey",lwd=1)
        }
        for(yl in seq(-3,3,1)){
            lines(c(xmin,xmax),c(yl,yl),col="darkgrey",lwd=1.2)
        }
        arrows(xmin,0,xmax,0,0.1,15,3,lwd=2)
        arrows(0,-ym,0,ym,0.1,15,3,lwd=2)
        lines(xx,yy,lwd=2,col="blue")
        dev.off()
    }
}

# fileConn<-file("v2_1/sols.txt")
# writeLines(sols, fileConn)
# close(fileConn)
# 
# fileConn<-file("v2_1/vars.txt")
# writeLines(vars, fileConn)
# close(fileConn)
