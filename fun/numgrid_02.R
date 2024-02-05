
# Addition Board 1: Addends 1-6 (2 addends)
nm1 = "Addition: Numbers 1-6"
X1 = 1:6
Y1 = apply(expand.grid(X1,X1),1,sum)

# Addition Board 2: Addends 0-9 (2 addends)
nm2 = "Addition: Numbers 0-9"
X2 = 0:9
Y2 = apply(expand.grid(X2,X2),1,sum)

# Addition Board 3: Addends 1-12 (2 addends)
nm3 = "Addition: Numbers 1-12"
X3 = 1:12
Y3 = apply(expand.grid(X3,X3),1,sum)

# Subtraction Board 1: Subtrahend (1-6) or Minuend (1-6) can be larger, but both are positive. (ex: 1-5 and 5-1 are possible)
nm4 = "Subtraction: Numbers 1-6"
X4 = 1:6
Y4 = apply(expand.grid(X4,X4),1,diff)

# Subtraction Board 2: Subtrahend (0-9) or Minuend (0-9) can be larger, but both are positive. (ex: 1-5 and 5-1 are possible)
nm5 = "Subtraction: Numbers 0-9"
X5 = 0:9
Y5 = apply(expand.grid(X5,X5),1,diff)

# Subtraction Board 3: Subtrahend (1-12) or Minuend (1-12) can be larger, but both are positive. (ex: 1-5 and 5-1 are possible)
nm6 = "Subtraction: Numbers 1-12"
X6 = 1:12
Y6 = apply(expand.grid(X6,X6),1,diff)

# Multiplication Board 1: Factors 1-6 (2 factors)
nm7 = "Multiplication: Numbers 1-6"
X7 = 1:6
Y7 = apply(expand.grid(X7,X7),1,prod)

# Multiplication Board 2: Factors 0-9 (2 factors)
nm8 = "Multiplication: Numbers 0-9"
X8 = 0:9
Y8 = apply(expand.grid(X8,X8),1,prod)

# Multiplication Board 3: Factors 1-12 (2 factors)
nm9 = "Multiplication: Numbers 1-12"
X9 = 1:12
Y9 = apply(expand.grid(X9,X9),1,prod)

# Division Board 1: Products with divisors 1-6 (include numbers: 8, 9, 10, 12, 14-16, 18, 20-22, 24-28, 30,32,33,35,36 taking into account the number of divisors each number has under 6, ex: 12 is more frequent than 9 because it can be divided by more numbers under 6)
#xx = c(8,9,10,12,14,15,16,18,20,21,22,24,25,26,27,28,30,32,33,35,36)
nm10 = "Division: Numbers 1-6"
xx = 8:36
Y10 = numeric()
for(x in xx){
  for(i in 2:6){
    if(x%%i==0){
      Y10 = c(Y10,x)
    }
  }
}

# Division Board 2: Products with divisors 1-12 (include numbers between 20 and 100 that have at least one divisor between 2-12, no psuedo prime numbers (ex:34) taking into account number of prime factors under 12)
nm11 = "Division: Numbers 1-12"
xx = 20:100
Y11 = numeric()
for(x in xx){
  for(i in 2:12){
    if(x%%i==0){
      Y11 = c(Y11,x)
    }
  }
}

nms = c(nm1,nm2,nm3,nm4,nm5,nm6,nm7,nm8,nm9,nm10,nm11)
ys = list(Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11)
uu = list()
rr = list()
for(i in 1:length(ys)){
  uu[[i]] = unique(ys[[i]])
  ww = numeric()
  for(u in uu[[i]]){
    ww = c(ww,which(ys[[i]]==u)[1])
  }
  rr[[i]] = ys[[i]][-ww]
}
fns = c("Add_1-6","Add_0-9","Add_1-12",
        "Sub_1-6","Sub_0-9","Sub_1-12",
        "Mul_1-6","Mul_0-9","Mul_1-12",
        "Div_1-6","Div_1-12")

ncopies = 3 #how many versions
d = 2 #distance between dots (cm)
m = 1 #margin (cm)
numcol = 7
numrow = 7
dotsizefactor = 0.7
numbersizefactor = 2
fileroots = "numgrids/output"
#seed = sample(100:999,1)
#set.seed(seed)

dn = paste0("NG_",numcol,"x",numrow)  #,"_seed_",seed)
dir.create(dn, showWarnings=FALSE)
width = numcol*d+2*m
height = numrow*d+2*m

for(vern in 1:length(nms)){
  fn = fns[vern]
  nm = nms[vern]
  u = uu[[vern]]
  r = rr[[vern]]
  y = ys[[vern]]
  N = numcol*numrow
  x = numeric()
  ytab = table(y)/length(y)*N
  yt2 = sort(sample(ytab))
  while(length(x)<N){
    x = c(x,as.integer(names(yt2[length(yt2)])))
    yt2[length(yt2)] = yt2[length(yt2)]-1
    yt2 = sort(sample(yt2))
  }
  for(copyn in 1:ncopies){
    x2 = sample(x)
    x2 = matrix(x2,ncol=numcol)
    filename = paste0("ng_",numcol,"x",numrow,"_",
                      sprintf("%02d",vern),
                      "_",fn,"_V",copyn,".png",collapse="")
    png(paste0(dn,"/",filename,collapse=""),width,height,"cm",pointsize=14,res=300,bg="white")
    par(mar=c(0,0,0,0))
    plot(0,0,type="n",xlim=c(0,width),ylim=c(0,height),axes=F,ann=F)
    for(i in 0:numcol){
      for(j in 0:numrow){
        points(m+i*d,m+j*d,pch=19,cex=dotsizefactor)
      }
    }
    for(i in 1:numcol){
      for(j in 1:numrow){
        text(m+(i-0.5)*d,m+(j-0.5)*d,x2[j,i],pch=19,cex=numbersizefactor)
      }
    }
    #text(width/2,height-m/2,nm) ## add title to PNG
    dev.off()
  }
}

