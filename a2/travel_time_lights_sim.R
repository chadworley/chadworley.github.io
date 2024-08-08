pd = 1:20
x = sample(pd,100,T)
sums = numeric()
for(i in 1:20000){
  si = sum(sample(x,100,T))
  sums = c(sums,si)
}
sums = sort(sums)
hist(sums)
print(sums[500])
print(sums[19500])

print(2*sd(x)*sqrt(100))
print(sum(x)-sums[500])
print(sums[19500]-sum(x))

print(sqrt(mean((pd-mean(pd))^2))*2*sqrt(100))
