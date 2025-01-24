pdf("unit_circle_angles.pdf",8.5,11)

deg_opts = c(0,30,45,60,90,120,135,150,180,210,225,240,270,300,315,330,360)
dos = paste0(deg_opts,"º")
ras = c("0","\\pi/6","\\pi/4","\\pi/3","\\pi/2","2\\pi/3","3\\pi/4","5\\pi/6",
        "\\pi","7\\pi/6","5\\pi/4","4\\pi/3","3\\pi/2","5\\pi/3","7\\pi/4","11\\pi/6","2\\pi")
library(latex2exp)
par(mar=c(0,0,0,0),pty="s")
plot(0,0,"n",xlim=c(-1.2,1.2),ylim=c(-1.2,1.2),axes=F,ann=F)
tt = seq(0,2*pi,pi/1000)
lines(cos(tt),sin(tt),lwd=2)
for(t in deg_opts){
    r = t/180*pi
    lines(c(0,cos(r)),c(0,sin(r)),col="lightgrey")
}
for(t in 2:length(deg_opts)){
    r = deg_opts[t]/180*pi
    s = TeX(paste0("$",dos[t]," = ",ras[t],"$",collapse=""))
    srt = (deg_opts[t]+90)%%180-90
    text(0.7*cos(r),0.7*sin(r),s,srt=srt,cex=1.5,adj=c(0.5,0.5))
}
text(0.25,0,TeX("$0º=0$"),cex=1.5)

text(0,1.2,"Common angles in degrees and radians")


dev.off()