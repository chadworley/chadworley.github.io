pdf(file = "angler.pdf",   # The directory you want to save the file in
    width = 4, # The width of the plot in inches
    height = 4) # The height of the plot in inches

par(mar=c(0,0,0,0))
plot(0,0,type="n",axes=F,ann=F,xlim=c(-1,1),ylim=c(-1,1))
th1 = seq(0,2*pi,length.out=1000)
lines(cos(th1),sin(th1))
lines(0.02*cos(th1),0.02*sin(th1))
th2 = seq(0,6,1)
for(th in th2){
  lines(c(0.95*cos(th),cos(th)),c(0.95*sin(th),sin(th)),lwd=2)
}
for(i in 0:6){
  text(0.9*cos(i),0.9*sin(i),i,srt=i/pi*180)
}
th3 = seq(0.5,5.5,1)
for(th in th3){
  lines(c(0.96*cos(th),cos(th)),c(0.96*sin(th),sin(th)),lwd=1.5)
}
th4 = seq(0,2*pi,0.1)
for(th in th4){
  lines(c(0.97*cos(th),cos(th)),c(0.97*sin(th),sin(th)),lwd=1)
}
th5 = seq(0,2*pi,0.02)
for(th in th5){
  lines(c(0.98*cos(th),cos(th)),c(0.98*sin(th),sin(th)),lwd=0.5)
}

for(th in th2){
  lines(c(0.8*cos(th),0.85*cos(th)),c(0.8*sin(th),0.85*sin(th)),lwd=1)
}
th3 = seq(0.5,5.5,1)
for(th in th3){
  lines(c(0.84*cos(th),0.8*cos(th)),c(0.84*sin(th),0.8*sin(th)),lwd=1)
}
th4 = seq(0,2*pi,0.1)
for(th in th4){
  lines(c(0.83*cos(th),0.8*cos(th)),c(0.83*sin(th),0.8*sin(th)),lwd=1)
}
th5 = seq(0,2*pi,0.02)
for(th in th5){
  lines(c(0.82*cos(th),0.8*cos(th)),c(0.82*sin(th),0.8*sin(th)),lwd=0.5)
}

dev.off()