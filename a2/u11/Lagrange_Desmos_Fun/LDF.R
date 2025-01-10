
n = 3

tot = character()

for(i in 1:n){
    fr = paste0("y_",i,collapse="")
    tp = paste0("(x-x_",(1:n)[-i],")",collapse="")
    btm = paste0("(x_",i,"-x_",(1:n)[-i],")",collapse="")
    tot = c(tot,paste0(fr,"\frac{",tp,"}{",btm,"}",collapse=""))
}

tot = paste0("L(x)=",paste0(tot,collapse="+"),collapse="")

print(tot)

indy = 1:n

print(paste0("(x_",indy,",y_",indy,")",collapse=","))

rands = sample(11:99,n*2,F)/100
randx = rands[1:n]
randy = rands[(n+1):(2*n)]


alldem = ""
for(i in 1:n){
    alldem = paste0(alldem,"x_",i,"=",randx[i],"t, ",collapse="")
    alldem = paste0(alldem,"y_",i,"=",randy[i],"t, ",collapse="")
}
cat(alldem)


