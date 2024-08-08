png("hi2.png",width=480,height=480)
options(scipen=99)

choice = sample(1:10,1)

if(choice == 1){
  thetas = c(-pi/2,-pi/6,pi/6,pi/2)
  thetas1= thetas
  k = 0.35-sample(0:7,1)/100
  depth = 7
}
if(choice == 2){
  thetas = c(-pi/2,0,pi/2)
  thetas1 = thetas
  k = 0.5-sample(0:10,1)/100
  depth = 9
}
if(choice == 3){
  thetas = c(-2*pi/3,0,2*pi/3)
  thetas1 = thetas
  k = 0.35-sample(0:10,1)/100
  depth = 8
}
if(choice == 4){
  thetas = c(-pi/2,pi/2)
  thetas1 = thetas
  k = 0.55-sample(0:10,1)/100
  depth = 9
}
if(choice == 5){
  thetas1 = c(-pi/4,pi/4)
  thetas = thetas1
  k = 0.59-sample(0:6,1)/100
  depth = 12
}
if(choice == 6){
  thetas1 = seq(-2*pi/3,2*pi/3,pi/6)
  thetas = thetas1
  k = 0.21-sample(0:2,1)/100
  depth = 5
}
if(choice == 7){
  thetas1 = c(pi/4)
  thetas = thetas1
  k = 0.9-sample(0:20,1)/100
  depth = 100
}
if(choice == 8){
  thetas1 = seq(-3*pi/5,3*pi/5,pi/5)
  thetas = thetas1
  k = 0.23-sample(0:3,1)/100
  depth = 5
}
if(choice == 9){
  thetas1 = seq(-7*pi/10,7*pi/10,pi/5)
  thetas = thetas1
  k = 0.24-sample(0:3,1)/100
  depth = 5
}
if(choice == 10){
  thetas1 = c(-5*pi/8,-3*pi/8,3*pi/8,5*pi/8)
  thetas = thetas1
  k = 0.3-sample(0:3,1)/100
  depth = 7
}
k = sqrt(floor(k^2*100)/100)
maxdis = 1+2*k/(1-k)
xx = list(0)
yy = list(0)
rr = list(1)
tt = list(pi/2)
ymax = -1
ymin = 1
xmax = -1
xmin = 1

for(i in 1:length(thetas1)){
  R = rr[[1]]*(1+k)
  xp = xx[[1]]
  yp = yy[[1]]
  rp = rr[[1]]
  tp = tt[[1]]
  if(xp+rp>xmax){
    xmax = xp+rp
  }
  if(xp-rp<xmin){
    xmin = xp-rp
  }
  if(yp+rp>ymax){
    ymax = yp+rp
  }
  if(yp-rp<ymin){
    ymin = yp-rp
  }
  tc = tp+thetas1[i]
  xc = xp+cos(tc)*R
  yc = yp+sin(tc)*R
  rc = rp*k
  if(length(xx)<2){
    xx[[2]] = xc
    yy[[2]] = yc
    rr[[2]] = rc
    tt[[2]] = tc
  }  else {
    xx[[2]] = c(xx[[2]],xc)
    yy[[2]] = c(yy[[2]],yc)
    rr[[2]] = c(rr[[2]],rc)
    tt[[2]] = c(tt[[2]],tc)
  }
}

for(ii in 3:depth){
  for(jj in 1:length(xx[[ii-1]])){
    for(i in 1:length(thetas)){
      R = k^(ii-2)+k^(ii-1)
      xp = xx[[ii-1]][jj]
      yp = yy[[ii-1]][jj]
      rp = rr[[ii-1]][jj]
      tp = tt[[ii-1]][jj]
      if(xp+rp>xmax){
        xmax = xp+rp
      }
      if(xp-rp<xmin){
        xmin = xp-rp
      }
      if(yp+rp>ymax){
        ymax = yp+rp
      }
      if(yp-rp<ymin){
        ymin = yp-rp
      }
      tc = tp+thetas[i]
      xc = xp+cos(tc)*R
      yc = yp+sin(tc)*R
      rc = rp*k
      if(length(xx)<ii){
        xx[[ii]] = xc
        yy[[ii]] = yc
        rr[[ii]] = rc
        tt[[ii]] = tc
      }  else {
        xx[[ii]] = c(xx[[ii]],xc)
        yy[[ii]] = c(yy[[ii]],yc)
        rr[[ii]] = c(rr[[ii]],rc)
        tt[[ii]] = c(tt[[ii]],tc)
      }
    }
  }
}
NN = length(thetas)
rrr = NN*k^2
sol = 1/(1-rrr)

rangex = xmax-xmin
rangey = ymax-ymin
bigrange = max(c(rangex,rangey))
midx = (xmax+xmin)/2
midy = (ymax+ymin)/2

circ = function(xc,yc,r){
  t = seq(0,2*pi,pi/100)
  x = xc+cos(t)*r
  y = yc+sin(t)*r
  polygon(x,y,col="black",border=NA)
}
par(mar=c(0,0,0,0),pty="s")
plot(0,0,type="n",
     xlim=c(midx-bigrange/2,midx+bigrange/2),ylim=c(midy-bigrange/2,midy+bigrange/2),
     axes=F,ann=F)
for(i in 1:length(xx)){
  if(length(xx[[i]])==1){
    circ(xx[[i]],yy[[i]],rr[[i]])
  } else {
    for(j in 1:length(xx[[i]])){
      circ(xx[[i]][j],yy[[i]][j],rr[[i]][j])
    }
  }
}
dev.off()