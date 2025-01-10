
## Eh... needs to be sin(0.34t) or something...

n = 8

tot = character()

rands = sample(11:99,n*2,F)/100
randx = rands[1:n]
randy = rands[(n+1):(2*n)]

for(i in 1:n){
    fr = paste0("sin(",randy[i],"t)",collapse="")
    tp = paste0("(x-sin(",randx[(1:n)[-i]],"t))",collapse="")
    btm = paste0("(sin(",randx[i],"t)-sin(",randx[(1:n)[-i]],"t))",collapse="")
    tot = c(tot,paste0(fr,"\frac{",tp,"}{",btm,"}",collapse=""))
}

tot = paste0("L(x)=",paste0(tot,collapse="+"),collapse="")

print(tot)
# indy = 1:n
print(paste0("(sin(",randx,"t),sin(",randy,"t))",collapse=","))

# alldem = ""
# for(i in 1:n){
#     alldem = paste0(alldem,"x_",i,"=",randx[i],"t, ",collapse="")
#     alldem = paste0(alldem,"y_",i,"=",randy[i],"t, ",collapse="")
# }
# cat(alldem)


