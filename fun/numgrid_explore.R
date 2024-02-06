# Make number grids

ncopies = 3 #how many versions of each of the 11 types
d = 2 #distance between dots (cm)
m = 1 #margin (cm)
numcol = 6 # how many number columns (numDotCols is 1 more)
numrow = 6 # how many number rows (numDotRows is 1 more)
dotsizefactor = 0.7
numbersizefactor = 2
dn = paste0("NG_",numcol,"x",numrow) #directory name for storing PNGs

# Addition Board 1: Addends 1-6 (2 addends)
X1 = 1:6
Y1 = apply(expand.grid(X1,X1),1,sum)

# Addition Board 2: Addends 0-9 (2 addends)
X2 = 0:9
Y2 = apply(expand.grid(X2,X2),1,sum)

# Addition Board 3: Addends 1-12 (2 addends)
X3 = 1:12
Y3 = apply(expand.grid(X3,X3),1,sum)

# Subtraction Board 1: Subtrahend (1-6) or Minuend (1-6) can be larger, but both are positive. (ex: 1-5 and 5-1 are possible)
X4 = 1:6
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

for(i in 1:length(ys)){
  print(fns[i])
  print(length(unique(ys[[i]])))
}
