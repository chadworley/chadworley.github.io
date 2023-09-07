
x = 1:6
hist(x,breaks = seq(min(x)-0.5,max(x)+0.5,1))


x2 = numeric()
for(i in x){
  x2 = c(x2,i+x)
}
hist(x2,breaks = seq(min(x2)-0.5,max(x2)+0.5,1))


x3 = numeric()
for(i in x){
  x3 = c(x3,i+x2)
}
hist(x3,breaks = seq(min(x3)-0.5,max(x3)+0.5,1))

x4 = numeric()
for(i in x){
  x4 = c(x4,i+x3)
}
hist(x4,breaks = seq(min(x4)-0.5,max(x4)+0.5,1))


