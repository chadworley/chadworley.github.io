typ = sample(1:5,1)
NNN = 1200
pams = list(c(1,1,0.5),
            c(0.1,0.1,0.5),
            c(10,10,0.5),
            c(0.8,2,0.75),
            c(2,0.8,0.25))
if(typ==1){
  a = 1
  b = 1
  m = 0.5
} else if(typ == 2){
  a = 0.1
  b = 0.1
  m = 0.5
} else if(typ == 3){
  a = 10
  b = 10
  m = 0.5
} else if(typ == 4){
  a = 0.8
  b = 2
  m = 0.75
} else if(typ == 5){
  a = 2
  b = 0.8
  m = 0.25
}

H = sort(rbeta(NNN,a,b)*0.8+0.2)
di = runif(NNN,0,2*pi)
hu = (runif(NNN,0,0.2)+runif(1,0,1))%%1

n = 75
pop = sample(1:NNN)
sam1 = sample(1:NNN,n)
nrh = sample(2:4,1)
sam2 = sample(c(1:(n-nrh),sample((NNN-n):NNN,nrh)))
nrh = sample(2:4,1)
sam3 = sample(c((NNN-n+nrh):(NNN),sample(1:n,nrh)))
nrh = sample(3:6,1)
sam4 = sample(c((NNN*m-n%/%2-2):(NNN*m-n%/%2-2+n-nrh),sample(1:NNN,nrh)))
sam5 = sample(c(1:(n%/%2),sample((NNN-n%/%2):NNN)))

makeit = function(name="name.png",ns=1:NNN,ncol=NNN/20,nrow=20,h=H){
  png(name,width=1200,height=1200)
  par(pty="s",mar=c(0,0,0,0))
  plot(0,0,type="n",xlim=c(0,ncol/3),ylim=c(0,nrow),axes=F,ann=F)
  th=seq(0,2*pi,pi/100)
  w = 0.2
  for(i in 1:ncol){
    for(j in 1:nrow){
      n = ns[(i-1)*nrow+j]
      polygon(i/3+c(-w,-w,w,w)/2-0.5/3,
              j+c(-h[n],h[n],h[n],-h[n])/2-1+h[n]/2,
              col=hsv(hu[n],0.9,1),lwd=0.5)
      polygon(i/3+0.06*cos(th)-0.5/3,
              j+0.06*sin(th)+h[n]/2-0.09-1+h[n]/2,
              col="white",lwd=0.3)
      polygon(i/3+0.03*cos(di[n])+0.03*cos(th)-0.5/3,
              j+0.03*sin(di[n])+h[n]/2-0.09+0.03*sin(th)-1+h[n]/2,
              col="black",lwd=0.3)
    }
  }
  dev.off()
}

makeit("pop.png",pop,NNN/20,20,H)
makeit("sam1.png",sam1,NNN/20/4,20/4,H)
makeit("sam2.png",sam2,NNN/20/4,20/4,H)
makeit("sam3.png",sam3,NNN/20/4,20/4,H)
makeit("sam4.png",sam4,NNN/20/4,20/4,H)
makeit("sam5.png",sam5,NNN/20/4,20/4,H)


