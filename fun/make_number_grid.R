ncopies = 3 #how many versions
w = 8.5 #paper width (in)
h = 11  #paper height (in)
m = 1 #paper margin (in)
d = 0.8 #distance between dots (in)
dotsizefactor = 0.7
numbersizefactor = 2
X = c(5,6,7,8) #possibilities
P = c(0.4,0.3,0.2,0.1) #probabilities
fileroots = "output"

for(copy in 1:ncopies){
  pdf(paste0(fileroots,sprintf("%02d",copy),".pdf",collapse=""), width=w, height=h)
  par(mar=c(0,0,0,0)) #get rid of plot margins
  plot(0,0,type="n",xlim=c(0,w),ylim=c(0,h),axes=F,ann=F) #initialize plot area
  nx = (w-2*m)%/%d #number of dots horizontally
  ny = (h-2*m)%/%d #number of dots vertically
  xdots = seq(-nx*d/2,nx*d/2,length.out=nx)+w/2 #xcoords of dots
  ydots = seq(-ny*d/2,ny*d/2,length.out=ny)+h/2 #ycoords of dots
  xnums = (xdots+d/2)[1:(length(xdots)-1)]
  ynums = (ydots+d/2)[1:(length(ydots)-1)]
  for(x in xdots){
    for(y in ydots){
      points(x,y,pch=19,cex=dotsizefactor)
    }
  }
  for(x in xnums){
    for(y in ynums){
      num = sample(X,1,F,P)
      text(x,y,num,cex=numbersizefactor)
    }
  }
  dev.off()
}
