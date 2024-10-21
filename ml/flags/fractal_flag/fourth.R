w = 50
r = 0.6666666666 # <sqrt(2)/2
b = (1-2*r^2)*w
h = w*r

colbg = "grey"
col1 = "white"
col2 = "black"
depth = 8

pdf("fracflag4rev.pdf",w,h)
par(mar=c(0,0,0,0), xaxs='i', yaxs='i')
plot(0,0,"n",xlim=c(0,w),ylim=c(0,h),axes=F,ann=F)
polygon(c(0,0,w,w),c(0,h,h,0),col=colbg,border = F)


xlist = list(c(0,w))
ylist = list(c(0,h))

for(jj in 0:depth){
    nxl = list()
    deg = jj*2
    for(i in 1:length(xlist)){
        xmid = mean(xlist[[i]])
        x1 = xmid-b*r^deg/2
        x2 = xmid+b*r^deg/2
        nxl[[2*i-1]] = sort(c(xlist[[i]][1],x1))
        nxl[[2*i]] = sort(c(xlist[[i]][2],x2))
        for(j in 1:length(ylist)){
            y1 = ylist[[j]][1]
            y2 = ylist[[j]][2]
            polygon(c(x1,x1,x2,x2),c(y1,y2,y2,y1),col=col1,border = F)
        }
    }
    xlist = nxl
    nyl = list()
    deg = jj*2+1
    for(i in 1:length(ylist)){
        ymid = mean(ylist[[i]])
        y1 = ymid-b*r^deg/2
        y2 = ymid+b*r^deg/2
        nyl[[2*i-1]] = sort(c(ylist[[i]][1],y1))
        nyl[[2*i]] = sort(c(ylist[[i]][2],y2))
        for(j in 1:length(xlist)){
            x1 = xlist[[j]][1]
            x2 = xlist[[j]][2]
            polygon(c(x1,x1,x2,x2),c(y1,y2,y2,y1),col=col2,border = F)
        }
    }
    ylist = nyl
}


dev.off()

print(1-2*r^2)