png("sc_cont_hept_better.png",1000,1000)

par(pty="s",mar=c(0,0,0,0))
plot(0,0,type="n",axes=F,ann=F,xlim=c(-5.5,5.5),ylim=c(-5.5,5.5))
rmult = 2/pi
radd = 0.5
xxold = 0
yyold = 0
isleft = F
lmult = 1-2*isleft

lwd = 3

rowbeg = 3
rowend = 7

for(i in (7*rowbeg):(7*rowend)){
  ang1 = i/7*2*pi*lmult
  r1 = i/7*rmult+radd
  x1 = r1*cos(ang1)
  y1 = r1*sin(ang1)
  ang2 = (i+1)/7*2*pi*lmult
  r2 = (i+1)/7*rmult+radd
  x2 = r2*cos(ang2)
  y2 = r2*sin(ang2)
  numdots = max(i%/%7,0)+1
  dotseq = seq(0,1-1/numdots,length.out=numdots)
  for(j in 1:numdots){
    dotrat = dotseq[j]
    xx = (1-dotrat)*x1+dotrat*x2
    yy = (1-dotrat)*y1+dotrat*y2
    if(!(xxold==0 && yyold==0)){
      lines(c(xxold,xx),c(yyold,yy),col="black",lwd=lwd)
    }
    if(i<6){
      lines(c(0,xx),c(0,yy),col="lightgreen",lwd=lwd)
    }
    xxold = xx
    yyold = yy
    #text(xx,yy,"+",srt=mean(c(ang1,ang2))/pi*180,cex=2)
    if(j==1){
      k = i+7
      ang31 = k/7*2*pi*lmult
      r31 = k/7*rmult+radd
      x31 = r31*cos(ang31)
      y31 = r31*sin(ang31)
      ang32 = (k+1)/7*2*pi*lmult
      r32 = (k+1)/7*rmult+radd
      x32 = r32*cos(ang32)
      y32 = r32*sin(ang32)
      numdots33 = max(k%/%7,0)+1
      dotseq33 = seq(0,1-1/numdots33,length.out=numdots33)
      dotrat33 = dotseq33[1]
      xx33 = (1-dotrat33)*x31+dotrat33*x32
      yy33 = (1-dotrat33)*y31+dotrat33*y32
      lines(c(xx,xx33),c(yy,yy33),col="red",lwd=lwd)
      dotrat33 = dotseq33[2]
      xx33 = (1-dotrat33)*x31+dotrat33*x32
      yy33 = (1-dotrat33)*y31+dotrat33*y32
      lines(c(xx,xx33),c(yy,yy33),col="red",lwd=lwd)
    } else {
      k = i+7
      ang31 = k/7*2*pi*lmult
      r31 = k/7*rmult+radd
      x31 = r31*cos(ang31)
      y31 = r31*sin(ang31)
      ang32 = (k+1)/7*2*pi*lmult
      r32 = (k+1)/7*rmult+radd
      x32 = r32*cos(ang32)
      y32 = r32*sin(ang32)
      numdots33 = max(k%/%7,0)+1
      dotseq33 = seq(0,1-1/numdots33,length.out=numdots33)
      dotrat33 = dotseq33[j+1]
      xx33 = (1-dotrat33)*x31+dotrat33*x32
      yy33 = (1-dotrat33)*y31+dotrat33*y32
      lines(c(xx,xx33),c(yy,yy33),col="lightblue",lwd=lwd)
    }
  }
}

for(i in (7*rowbeg):(7*rowend)){
  ang1 = i/7*2*pi*lmult
  r1 = i/7*rmult+radd
  x1 = r1*cos(ang1)
  y1 = r1*sin(ang1)
  ang2 = (i+1)/7*2*pi*lmult
  r2 = (i+1)/7*rmult+radd
  x2 = r2*cos(ang2)
  y2 = r2*sin(ang2)
  numdots = max(i%/%7,0)+1
  dotseq = seq(0,1-1/numdots,length.out=numdots)
  for(j in 1:numdots){
    dotrat = dotseq[j]
    xx = (1-dotrat)*x1+dotrat*x2
    yy = (1-dotrat)*y1+dotrat*y2
    if(i < 7*(rowbeg+1)){
      dacol = "darkgrey"
    } else {
      dacol = "black"
    }
    text(xx,yy,"+",srt=mean(c(ang1,ang2))/pi*180,cex=6,col=dacol)
  }
}

dev.off()