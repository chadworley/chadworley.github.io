pdf("mult_table.pdf",8.5,11)

par(mar=c(0,0,0,0))
plot(0,0,"n",axes=F,ann=F,xlim=c(0,30),ylim=c(0,100))

# for(i in 1:30){
#     abline(v=i,col="grey")
# }
# 
# for(i in 1:100){
#     abline(h=i,col="grey")
# }

for(i in 0:49){
    j = i*2
    polygon(c(1,1,30,30),c(j,j+1,j+1,j),col=rgb(0.9,0,0,0.1))
}

for(i in 1:15){
    j = i*2
    polygon(c(j,j,j-1,j-1),c(0,99,99,0),col=rgb(0,0,0.9,0.1))
}

for(i in 1:30){
    for(j in 1:100){
        text(i-0.5,100-j+0.5,i*j,cex=0.5)
    }
}

for(i in 2:30){
    text(i-0.5,-0.5,i,cex=0.5)
}


dev.off()
