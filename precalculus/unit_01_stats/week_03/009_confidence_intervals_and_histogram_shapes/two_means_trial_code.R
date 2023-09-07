sames = 0
diffs = 0

for(i in 1:10000){
  n1 = sample(20:40,1)
  n2 = sample(20:40,1)
  sig1 = runif(1,2,10)
  sig2 = sig1
  mu1 = runif(1,30,70)
  mu2 = mu1+sample(c(-1,1),1)*sig1/sqrt(max(c(n1,n2)))*4
  x1 = rnorm(n1,mu1,sig1)
  x2 = rnorm(n2,mu2,sig2)
  xbar1 = mean(x1)
  xbar2 = mean(x2)
  s1 = sd(x1)
  s2 = sd(x2)
  LB1 = xbar1-2*s1/sqrt(n1)
  UB1 = xbar1+2*s1/sqrt(n1)
  LB2 = xbar2-2*s2/sqrt(n2)
  UB2 = xbar2+2*s2/sqrt(n2)
  if(UB1<LB2 || UB2<LB1){diffs = diffs+1} else {sames=sames+1}
}
print(sames)
print(diffs)