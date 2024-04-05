rezz = character()

for(i in 1:100){
  while(T){
    a = round(runif(1,2,5),1)
    c = round(runif(1,a+1,8),1)
    b = sqrt(c^2-a^2)
    x1 = round(runif(1,a+1,9),1)
    y1 = b*sqrt(x1^2/a^2-1)
    y1r = round(y1,1)
    d1 = a+c
    d2 = c-a
    diff1 = d1-d2
    d3 = sqrt((x1+c)^2+y1r^2)
    d4 = sqrt((x1-c)^2+y1r^2)
    diff2 = d3-d4
    if(b/a<2 && b/a>1/2 && round(y1,1)==round(y1,2) && y1<9 && x1!=c &&
       round(d3,1)==round(d3,2) && round(d4,1)==round(d4,2) && round(diff2,1)==2*a  && round(d4,1)!=y1r){break}
  }
  rezz = c(rezz,paste0(a,"_",c,"_",x1,collapse=""))
}
print(length(rezz))
print(length(unique(rezz)))
