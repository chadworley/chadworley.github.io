pdf("circ_graph.pdf",8,8)
par(mar=c(3,3,3,3),pty="s")
plot(0,0,"n",xlim=c(0,1.2),ylim=c(0,1.2))

for(i in seq(0.01,0.99,0.01)){
    lines(c(i,i),c(0,1),lwd=0.5,col="grey")
    lines(c(0,1),c(i,i),lwd=0.5,col="grey")
}
for(i in seq(0.05,0.95,0.1)){
    lines(c(i,i),c(0,1),lwd=0.9,col="darkgrey")
    lines(c(0,1),c(i,i),lwd=0.9,col="darkgrey")
}
for(i in seq(0.1,0.9,0.1)){
    lines(c(i,i),c(0,1),lwd=1.3)
    lines(c(0,1),c(i,i),lwd=1.3)
}
for(i in c(0,0.5,1)){
    lines(c(i,i),c(0,1),lwd=2)
    lines(c(0,1),c(i,i),lwd=2)
}
th = seq(0,pi/2,pi/360)
lines(cos(th),sin(th),lwd=2,col="blue")

for(x in seq(0,1,0.05)){
    y = sqrt(1-x^2)
    ang = atan(y/x)
    points(x,y,pch=19,col="red")
    text(x,y,paste0("(",x,", ",signif(y,3),")"),adj=c(-0.1,0.5),srt=ang/pi*180,col="red")
    # ang = atan(x/y)
    # points(y,x,pch=19,col="red")
    # text(y,x,paste0("(",signif(y,3),",",x,")"),adj=c(-0.1,0.5),srt=ang/pi*180,col="red")
}
text(0.6,1.1,"y=sqrt(1-x^2)")

dev.off()