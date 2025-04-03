png("prct_deg_art.png",500,300)
par(mar=c(0,0,0,0))
plot(0,0,"n",xlim=c(0,5),ylim=c(0,3),axes=F,ann=F)

cols = c("black","blue","red","green","black")

n = 15
cols = hsv(seq(1.15,0.8,length.out=n)%%1,seq(0.6,0.3,length.out=n),seq(1,0.95,length.out=n))
for(i in 1:n){
    r = 1.1*(1-i/n)
    for(th in seq(0,2*pi,pi/180)){
        text(2.5+r*cos(th),0.8*3+r*sin(th),"451% = 4.51",cex=3,col=cols[i])
        text(2.5+r*cos(th),0.6*3+r*sin(th),"27% = 0.27",cex=3,col=cols[i])
        text(2.5+r*cos(th),0.4*3+r*sin(th),"6.78% = 0.0678",cex=3,col=cols[i])
        text(2.5+r*cos(th),0.2*3+r*sin(th),"0.123% = 0.00123",cex=3,col=cols[i])
    }
}

text(2.5,0.8*3,"451% = 4.51",cex=3)
text(2.5,0.6*3,"27% = 0.27",cex=3)
text(2.5,0.4*3,"6.78% = 0.0678",cex=3)
text(2.5,0.2*3,"0.123% = 0.00123",cex=3)

dev.off()