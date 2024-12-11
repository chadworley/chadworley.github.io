# Make number grids
# This version forces all unique values to be placed at least once first

ncopies = 3 #how many versions of each of the 11 types
d = 2 #distance between dots (cm)
m = 1 #margin (cm)
numcol = 7 # how many number columns (numDotCols is 1 more)
numrow = 7 # how many number rows (numDotRows is 1 more)
dotsizefactor = 0.7
numbersizefactor = 2
dn = paste0("D24_NG_",numcol,"x",numrow,"_force_uniques") #directory name for storing PNGs

# Addition Board 1: Addends 1-6 (2 addends)
X1 = 1:6
Y1 = apply(expand.grid(X1,X1),1,sum)

# Addition Board 2: Addends 0-9 (2 addends)
X2 = 0:9
Y2 = apply(expand.grid(X2,X2),1,sum)

# Addition Board 3: Addends 1-12 (2 addends)
X3 = 1:12
Y3 = apply(expand.grid(X3,X3),1,sum)

# THIS WAS ALTERED FOR A DIFFERENT GAME ON DEC 2024... it 
# Subtraction Board 1: Subtrahend (1-6) or Minuend (1-6) can be larger, but both are positive. (ex: 1-5 and 5-1 are possible)
X4 = c(-6:-1,1:6)    # 1:6
Y4 = apply(expand.grid(X4,X4),1,diff)

# Subtraction Board 2: Subtrahend (0-9) or Minuend (0-9) can be larger, but both are positive. (ex: 1-5 and 5-1 are possible)
X5 = 0:9
Y5 = apply(expand.grid(X5,X5),1,diff)

# Subtraction Board 3: Subtrahend (1-12) or Minuend (1-12) can be larger, but both are positive. (ex: 1-5 and 5-1 are possible)
X6 = 1:12
Y6 = apply(expand.grid(X6,X6),1,diff)

# Multiplication Board 1: Factors 1-6 (2 factors)
X7 = 1:6
Y7 = apply(expand.grid(X7,X7),1,prod)

# Multiplication Board 2: Factors 0-9 (2 factors)
X8 = 0:9
Y8 = apply(expand.grid(X8,X8),1,prod)

# Multiplication Board 3: Factors 1-12 (2 factors)
X9 = 1:12
Y9 = apply(expand.grid(X9,X9),1,prod)

# Division Board 1: Products with divisors 1-6 (include numbers: 8, 9, 10, 12, 14-16, 18, 20-22, 24-28, 30,32,33,35,36 taking into account the number of divisors each number has under 6, ex: 12 is more frequent than 9 because it can be divided by more numbers under 6)
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
xx = 20:100
Y11 = numeric()
for(x in xx){
  for(i in 2:12){
    if(x%%i==0){
      Y11 = c(Y11,x)
    }
  }
}

ys = list(Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11)
fns = c("Add_1-6","Add_0-9","Add_1-12",
        "Sub_1-6","Sub_0-9","Sub_1-12",
        "Mul_1-6","Mul_0-9","Mul_1-12",
        "Div_1-6","Div_1-12")

dir.create(dn, showWarnings=FALSE)
width = numcol*d+2*m
height = numrow*d+2*m

for(typen in 1:11){
  fn = fns[typen]
  y = ys[[typen]]
  u = unique(y)
  N = numcol*numrow
  x = numeric()
  ytab = table(y)/length(y)*N
  while(length(x)<N){
    ytab = sort(sample(ytab))
    if(length(u)>0){
      q = sort(sort(ytab)[as.character(u)])
      danum = as.integer(names(q[length(q)]))
      x = c(x,danum)
      daindu = which(u==danum)
      u = u[-daindu]
      daindy = which(names(ytab)==as.character(danum))
      ytab[daindy] = ytab[daindy]-1
    } else {
      x = c(x,as.integer(names(ytab[length(ytab)])))
      ytab[length(ytab)] = ytab[length(ytab)]-1
    }
    ytab = sample(ytab)
  }
  for(copyn in 1:ncopies){
    x2 = sample(x)
    x2 = matrix(x2,ncol=numcol)
    filename = paste0("ng_uniqs_",numcol,"x",numrow,"_",
                      sprintf("%02d",typen),
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
    dev.off()
  }
}


