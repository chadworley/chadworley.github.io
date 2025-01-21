trips = list(c(3,4,5),
             c(5, 12, 13),
             c(8, 15, 17),
             c(7, 24, 25),
             c(20, 21, 29),
             c(12, 35, 37),
             c(9, 40, 41),
             c(28, 45, 53),
             c(16, 63, 65),
             c(33, 56, 65),
             c(48, 55, 73),
             c(36, 77, 85),
             c(39, 80, 89),
             c(65, 72, 97))
library(latex2exp)
s = ""

for(i in 1:100){
    png(paste0("pics/im_",sprintf("%03d",i),".png",collapse=""),500,500)
    mm = 3.5 #multiplying for scale
    bump = 0.17 #text bump
    ss = 0.1 #square size
    vns = sample(LETTERS,3)
    ti = sample(1:length(trips),1)
    trip = trips[[ti]]
    #trip = trip*sample(1:floor(100/trip[3]),1)
    a = trip[1]
    b = trip[2]
    c = trip[3]
    theta = atan(a/b)
    phi = atan(b/a)
    t = a/b
    x = (1-t^2)/(1+t^2)
    y = sqrt(1-x^2)
    xta = mean(c(x,1))+bump*cos(theta)
    yta = y/2+bump*sin(theta)
    xtb = mean(c(x,-1))+bump*cos(theta+pi/2)
    ytb = y/2+bump*sin(theta+pi/2)
    xtc = 0
    ytc = -bump
    xtA = -1+bump*cos(theta/2+pi)
    ytA = bump*sin(theta/2+pi)
    xtB = 1+bump*cos(-phi/2)
    ytB = bump*sin(-phi/2)
    xtC = x+bump*cos(theta+pi/4)
    ytC = y+bump*sin(theta+pi/4)
    reflect = sample(c(-1,1),1)
    xv = c(-1,1,x)*reflect #vertices
    yv = c(0,0,y)
    xn = c(xta,xtb,xtc)*reflect #numbers
    yn = c(yta,ytb,ytc)
    xl = c(xtA,xtB,xtC)*reflect #labels
    yl = c(ytA,ytB,ytC)
    xs = c(x+ss*cos(theta-pi/2),x+ss*cos(theta-pi/2)+ss*cos(theta+pi),x+ss*cos(theta+pi))*reflect
    ys = c(y+ss*sin(theta-pi/2),y+ss*sin(theta-pi/2)+ss*sin(theta+pi),y+ss*sin(theta+pi))
    rotang = runif(1,0,2*pi)
    xvr = xv*cos(rotang)-yv*sin(rotang)
    yvr = xv*sin(rotang)+yv*cos(rotang)
    xnr = xn*cos(rotang)-yn*sin(rotang)
    ynr = xn*sin(rotang)+yn*cos(rotang)
    xlr = xl*cos(rotang)-yl*sin(rotang)
    ylr = xl*sin(rotang)+yl*cos(rotang)
    xsr = xs*cos(rotang)-ys*sin(rotang)
    ysr = xs*sin(rotang)+ys*cos(rotang)
    xxx = c(xvr,xnr,xlr)
    yyy = c(yvr,ynr,ylr)
    wid = max(xxx)-min(xxx)
    hei = max(yyy)-min(yyy)
    midx = (max(xxx)+min(xxx))/2
    midy = (max(yyy)+min(yyy))/2
    rad = max(c(wid,hei))/2*1.1
    par(mar=c(0,0,0,0),pty="s")
    plot(0,0,"n",axes=F,ann=F,xlim=c(midx-rad,midx+rad),ylim=c(midy-rad,midy+rad))
    polygon(xvr,yvr,lwd=2*mm,col=rgb(0,0,0,0.1))
    lines(xsr,ysr,lwd=mm)
    text(xlr,ylr,vns,cex=mm)
    text(xnr,ynr,trip,cex=mm)
    par(mar=c(0,0,0,0))
    # plot(0,0,"n",axes=F,ann=F,xlim=c(-1,1),ylim=c(-1,1))
    fs = c("sin","cos","tan")
    wf = sample(1:3,1)
    ff = fs[wf]
    wv = sample(1:2,1)
    vn = vns[wv]
    ans = c(paste0(a,"/",c),
            paste0(b,"/",c),
            paste0(a,"/",b),
            paste0(b,"/",c),
            paste0(a,"/",c),
            paste0(b,"/",a)
            )
    ante = ans[wv*3-3+wf]
    que = paste0(ff,"(",vn,")",collapse="")
    dev.off()
    s = paste0(s,sprintf("%03d",i)," - ",que," - ",ante,"\n",collapse="")
}

fileConn<-file("solutions.txt")
writeLines(s, fileConn)
close(fileConn)



