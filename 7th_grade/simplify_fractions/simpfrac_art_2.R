png("simpfracMC.png",1200,800)


par(mar=c(0,0,0,0), xaxs='i', yaxs='i')

plot(0,0,"n",xlim=c(-6,6),ylim=c(-4,4),axes=F,ann=F)

for(i in seq(-10,10,0.01)){
    prog = (i+10)/20
    coll = hsv((prog)%%1,(2*prog)%%1,(10*prog)%%1)
    xx = seq(-6,6,0.01)
    lines(xx,cos(xx*pi)+i/2,col=coll,lwd=8)
}

th = seq(0,2*pi,pi/1000)
r = 2.5
lwd=10

x1 = -((12-4*r)/6+r)
x2 =  ((12-4*r)/6+r)
polygon(r*cos(th)+x1,r*sin(th),lwd=lwd,col=rgb(0.3,1,1))
polygon(r*cos(th)+x2,r*sin(th),lwd=lwd,col=rgb(0.3,1,1))

thp = seq(0,2*pi*2/3,pi/1000)
polygon(c(x1,r*cos(thp)+x1,x1),c(0,r*sin(thp),0),col=rgb(1,0.3,0.3),lwd=lwd)
polygon(c(x2,r*cos(thp)+x2,x2),c(0,r*sin(thp),0),col=rgb(1,0.3,0.3),lwd=lwd)




th2 = seq(0,2*pi,2*pi/12)
th3 = seq(0,2*pi,2*pi/3)

for(i in th2){
    lines(c(x1,r*cos(i)+x1),c(0,r*sin(i)),lwd=lwd)
}

for(i in th3){
    lines(c(x2,r*cos(i)+x2),c(0,r*sin(i)),lwd=lwd)
}





dev.off()




