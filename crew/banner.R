w = 25
h = 38
pdf("banner.pdf",25,38)

par(mar=c(0,0,0,0))
plot(0,0,"n",xlim=c(-w/2,w/2),ylim=c(-h/2,h/2))

nseg = 12
rs = seq(0,h,h/100)
dt = exp(1.5*rs/h)
t0s = 2*pi*(0:(nseg))/(nseg)
for(i in 1:(length(t0s)-1)){
    t0 = t0s[i]
    t1 = t0s[i+1]
    if(i%%2==0){
        polygon(c(rs*cos(t0+dt),rev(rs*cos(t1+dt))),c(rs*sin(t0+dt),rev(rs*sin(t1+dt))),col="red")
    }
}

xs = seq(0,w*2/3)


dev.off()