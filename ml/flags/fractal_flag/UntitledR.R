x=1
y=1/8
a=2/3
b=2/3*y
r=2/3

w = 2*a+2*b
h = 1+y

pdf("fracflag.pdf",w,h)
par(mar=c(0,0,0,0), xaxs='i', yaxs='i')
plot(0,0,"n",xlim=c(0,w),ylim=c(0,h),axes=F,ann=F)
polygon(c(0,0,w,w),c(0,y,y,0),col="black",border=NULL)
midx = w/2
polygon(c(w/2-b,w/2-b,w/2+b,w/2+b),c(y,h,h,y),col="black")
midy = mean(c(y,h))
polygon(c(w/2-b,w/2-b,0,0),c(midy+r*b,midy-r*b,midy-r*b,midy+r*b),col="black")
polygon(c(w/2+b,w/2+b,w,w),c(midy+r*b,midy-r*b,midy-r*b,midy+r*b),col="black")
midx1 = mean(c(0,midx-b))
midx2 = mean(c(w,midx+b))
polygon(c(midx1-b*r^2,midx1-b*r^2,midx1+b*r^2,midx1+b*r^2),c(0,h,h,0),col="black")
polygon(c(midx2-b*r^2,midx2-b*r^2,midx2+b*r^2,midx2+b*r^2),c(0,h,h,0),col="black")
midy1 = midy+r*b+w/2*r^3
midy2 = midy-r*b-w/2*r^3
polygon(c(0,0,w,w),c(midy1+r^3*b,midy1-r^3*b,midy1-r^3*b,midy1+r^3*b),col="black")
polygon(c(0,0,w,w),c(midy2+r^3*b,midy2-r^3*b,midy2-r^3*b,midy2+r^3*b),col="black")

polygon(c(w/2-b,w/2-b,w/2+b,w/2+b),c(y,h,h,y),col="black")


dev.off()