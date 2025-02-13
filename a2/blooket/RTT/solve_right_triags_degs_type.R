# Find the length or angle measure marked with an x. Type your answer using 3 significant figures. If the number is less than 1, use a leading 0. Angles are in RADIANS.

alist = ""

for(iii in 1:1000){
    qt = sample(1:12,1)
    cex = 2.5
    lwd = 4
    # al,ol,hl,th
    while(T){
        deg = runif(1,15,79)
        th = deg/180*pi
        hl = runif(1,10,100)
        ol = hl*sin(th)
        al = hl*cos(th)
        if(ol>11 && al>11 && hl<99){break}
    }
    if(qt==1){ #ol=hl*sin(th)
        hyp = signif(hl,3)
        ang = signif(deg,3)
        labs = c("","x",sprintf("%.1f",hyp),sprintf("%.1f°",ang)) #a,o,h,t
        ans = signif(hyp*sin(ang/180*pi),3)
        ansstr = sprintf("%.1f",ans)
        atag = ""
    }
    if(qt==2){ #hl=ol/sin(th)
        opp = signif(ol,3)
        ang = signif(deg,3)
        labs = c("",sprintf("%.1f",opp),"x",sprintf("%.1f°",ang)) #a,o,h,t
        ans = signif(opp/sin(ang/180*pi),3)
        ansstr = sprintf("%.1f",ans)
        atag = ""
    }
    if(qt==3){ #th=asin(ol/hl)
        opp = signif(ol,3)
        hyp = signif(hl,3)
        labs = c("",sprintf("%.1f",opp),sprintf("%.1f",hyp),"x°") #a,o,h,t
        ans = signif(asin(opp/hyp)/pi*180,3)
        ansstr = sprintf("%.1f",ans)
        atag = "°"
    }
    if(qt==4){ #al=hl*cos(th)
        hyp = signif(hl,3)
        ang = signif(deg,3)
        labs = c("x","",sprintf("%.1f",hyp),sprintf("%.1f°",ang)) #a,o,h,t
        ans = signif(hyp*cos(ang/180*pi),3)
        ansstr = sprintf("%.1f",ans)
        atag = ""
    }
    if(qt==5){ #hl=al/cos(th)
        adj = signif(al,3)
        ang = signif(deg,3)
        labs = c(sprintf("%.1f",adj),"","x",sprintf("%.1f°",ang)) #a,o,h,t
        ans = signif(adj/cos(ang/180*pi),3)
        ansstr = sprintf("%.1f",ans)
        atag = ""
    }
    if(qt==6){ #th=acos(al/hl)
        adj = signif(al,3)
        hyp = signif(hl,3)
        labs = c(sprintf("%.1f",adj),"",sprintf("%.1f",hyp),"x°") #a,o,h,t
        ans = signif(acos(adj/hyp)/pi*180,3)
        ansstr = sprintf("%.1f",ans)
        atag = "°"
    }
    if(qt==7){ #ol=al*tan(th)
        adj = signif(al,3)
        ang = signif(deg,3)
        labs = c(sprintf("%.1f",adj),"x","",sprintf("%.1f°",ang)) #a,o,h,t
        ans = signif(adj*tan(ang/180*pi),3)
        ansstr = sprintf("%.1f",ans)
        atag = ""
    }
    if(qt==8){ #al=ol/tan(th)
        opp = signif(ol,3)
        ang = signif(deg,3)
        labs = c("x",sprintf("%.1f",opp),"",sprintf("%.1f°",ang)) #a,o,h,t
        ans = signif(opp/tan(ang/180*pi),3)
        ansstr = sprintf("%.1f",ans)
        atag = ""
    }
    if(qt==9){ #th=atan(ol/al)
        opp = signif(ol,3)
        adj = signif(al,3)
        labs = c(sprintf("%.1f",adj),sprintf("%.1f",opp),"","x°") #a,o,h,t
        ans = signif(atan(opp/adj)/pi*180,3)
        ansstr = sprintf("%.1f",ans)
        atag = "°"
    }
    if(qt==10){
        opp = signif(ol,3)
        adj = signif(al,3)
        labs = c(sprintf("%.1f",adj),sprintf("%.1f",opp),"x","") #a,o,h,t
        ansstr = sprintf("%.1f",signif(sqrt(opp^2+adj^2),3))
        ans = signif(sqrt(opp^2+adj^2),3)
        atag = ""
    }
    if(qt==11){
        opp = signif(ol,3)
        hyp = signif(hl,3)
        labs = c("x",sprintf("%.1f",opp),sprintf("%.1f",hyp),"") #a,o,h,t
        ansstr = sprintf("%.1f",signif(sqrt(hyp^2-opp^2),3))
        ans = signif(sqrt(hyp^2-opp^2),3)
        atag = ""
    }
    if(qt==12){
        adj = signif(al,3)
        hyp = signif(hl,3)
        labs = c(sprintf("%.1f",adj),"x",sprintf("%.1f",hyp),"") #a,o,h,t
        ansstr = sprintf("%.1f",signif(sqrt(hyp^2-adj^2),3))
        ans = signif(sqrt(hyp^2-adj^2),3)
        atag = ""
    }
    hstr = labs[3]
    astr = labs[1]
    ostr = labs[2]
    angstr = labs[4]
    png(paste0("p4/q",sprintf("%03d",iii),".png"),480,480)
    par(mar=c(0,0,0,0),pty="s")
    refl = sample(c(T,F),1)
    bmp = 0.05
    xs = c(0,cos(th),cos(th))
    ys = c(0,0,sin(th))
    xlo = cos(th)+bmp
    ylo = sin(th)/2
    srto = 90
    xla = cos(th)/2
    yla = -bmp
    srta = 0
    xlh = cos(th)/2+bmp*cos(th+pi/2)
    ylh = sin(th)/2+bmp*sin(th+pi/2)
    srth = th/pi*180
    xang = 1.5*bmp*cos(seq(0,th,pi/360))/th
    yang = 1.5*bmp*sin(seq(0,th,pi/360))/th
    xlang = 1.5*bmp*cos(th/2)/th+bmp/3*cos(th/2)
    ylang = 1.5*bmp*sin(th/2)/th+bmp/3*sin(th/2)
    srtang = th/2/pi*180
    xsq = c(cos(th)-bmp,cos(th)-bmp,cos(th))
    ysq = c(0,bmp,bmp)
    if(refl){
        xs = -xs
        xlo = -xlo
        srto = -90
        xla = -xla
        srta = 0
        xlh = -xlh
        srth = -th/pi*180
        xang = -xang
        xlang = -xlang
        srtang = -th/2/pi*180
        xsq = -xsq
    }
    rotang = runif(1,0,2*pi)
    xs2 = xs*cos(rotang)-ys*sin(rotang)
    ys2 = xs*sin(rotang)+ys*cos(rotang)
    xlo2 = xlo*cos(rotang)-ylo*sin(rotang)
    ylo2 = xlo*sin(rotang)+ylo*cos(rotang)
    srto2 = (srto+rotang/pi*180+90)%%180-90
    xla2 = xla*cos(rotang)-yla*sin(rotang)
    yla2 = xla*sin(rotang)+yla*cos(rotang)
    srta2 = (srta+rotang/pi*180+90)%%180-90
    xlh2 = xlh*cos(rotang)-ylh*sin(rotang)
    ylh2 = xlh*sin(rotang)+ylh*cos(rotang)
    srth2 = (srth+rotang/pi*180+90)%%180-90
    srtang2 = (srtang+rotang/pi*180+90)%%180-90
    xang2 = xang*cos(rotang)-yang*sin(rotang)
    yang2 = xang*sin(rotang)+yang*cos(rotang)
    xlang2 = xlang*cos(rotang)-ylang*sin(rotang)
    ylang2 = xlang*sin(rotang)+ylang*cos(rotang)
    xsq2 = xsq*cos(rotang)-ysq*sin(rotang)
    ysq2 = xsq*sin(rotang)+ysq*cos(rotang)
    xxx = c(xs2,xlo2,xla2,xlh2,xlang2)
    yyy = c(ys2,ylo2,yla2,ylh2,ylang2)
    widx = (max(xxx)-min(xxx))/2
    widy = (max(yyy)-min(yyy))/2
    midx = (max(xxx)+min(xxx))/2
    midy = (max(yyy)+min(yyy))/2
    wid = max(c(widx,widy))
    plot(0,0,"n",xlim=c(midx-wid*1.2,midx+wid*1.2),ylim=c(midy-wid*1.2,midy+wid*1.2),axes=F,ann=F)
    angadj = (xlang2<0)*1
    if(angstr!=""){
        polygon(c(0,xang2),c(0,yang2),border="red",col=rgb(1,0,0,0.2),lwd=lwd)
        text(xlang2,ylang2,angstr,srt=srtang2,col="red",cex=cex,adj=angadj)
    }
    polygon(xs2,ys2,lwd=lwd)
    lines(xsq2,ysq2,lwd=lwd)
    text(xlo2,ylo2,ostr,srt=srto2,cex=cex)
    text(xla2,yla2,astr,srt=srta2,cex=cex)
    text(xlh2,ylh2,hstr,srt=srth2,cex=cex)
    alist = paste0(alist,ansstr,"\n",collapse="")
    dev.off()
}

fileConn<-file("solutions4.txt")
writeLines(alist, fileConn)

