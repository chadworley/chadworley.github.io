w = 50
r = 0.6666666666 # <sqrt(2)/2
b = (1-2*r^2)*w
h = w*r

colbg = "white"
col1 = rgb(0,0,0,0.7)
col2 = rgb(0,0,0,0.7)
depth = 10

pdf("fracflag2.pdf",w,h)
par(mar=c(0,0,0,0), xaxs='i', yaxs='i')
plot(0,0,"n",xlim=c(0,w),ylim=c(0,h),axes=F,ann=F)
polygon(c(0,0,w,w),c(0,h,h,0),col=colbg,border = F)
x1 = w/2-b/2
x2 = w/2+b/2
xlist = list(c(0,x1),
             c(x2,w))
polygon(c(x1,x1,x2,x2),c(0,h,h,0),col=col1,border = F)
y1 = h/2-b*r/2
y2 = h/2+b*r/2
ylist = list(c(0,y1),
             c(y2,h))
polygon(c(0,0,w,w),c(y1,y2,y2,y1),col=col2,border = F)

nxl = list()
deg = 2
for(i in 1:length(xlist)){
    xmid = mean(xlist[[i]])
    x1 = xmid-b*r^deg/2
    x2 = xmid+b*r^deg/2
    nxl[[2*i-1]] = sort(c(xlist[[i]][1],x1))
    nxl[[2*i]] = sort(c(xlist[[i]][2],x2))
    polygon(c(x1,x1,x2,x2),c(0,h,h,0),col=col1,border = F)
}
xlist = nxl

nyl = list()
deg = 3
for(i in 1:length(ylist)){
    ymid = mean(ylist[[i]])
    y1 = ymid-b*r^deg/2
    y2 = ymid+b*r^deg/2
    nyl[[2*i-1]] = sort(c(ylist[[i]][1],y1))
    nyl[[2*i]] = sort(c(ylist[[i]][2],y2))
    polygon(c(0,0,w,w),c(y1,y2,y2,y1),col=col2,border = F)
}
ylist = nyl

for(jj in 1:depth){
    nxl = list()
    deg = jj*2+2
    for(i in 1:length(xlist)){
        xmid = mean(xlist[[i]])
        x1 = xmid-b*r^deg/2
        x2 = xmid+b*r^deg/2
        nxl[[2*i-1]] = sort(c(xlist[[i]][1],x1))
        nxl[[2*i]] = sort(c(xlist[[i]][2],x2))
        polygon(c(x1,x1,x2,x2),c(0,h,h,0),col=col1,border = F)
    }
    xlist = nxl
    
    nyl = list()
    deg = jj*2+3
    for(i in 1:length(ylist)){
        ymid = mean(ylist[[i]])
        y1 = ymid-b*r^deg/2
        y2 = ymid+b*r^deg/2
        nyl[[2*i-1]] = sort(c(ylist[[i]][1],y1))
        nyl[[2*i]] = sort(c(ylist[[i]][2],y2))
        polygon(c(0,0,w,w),c(y1,y2,y2,y1),col=col2,border = F)
    }
    ylist = nyl
}


dev.off()

print(1-2*r^2)