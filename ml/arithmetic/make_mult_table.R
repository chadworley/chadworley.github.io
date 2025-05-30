pdf("mult_table_10x10.pdf",8.5,11)

nh = 10
nv = 10
cex = 0.8

par(mar=c(3,3,3,3),pty="s")
plot(0,0,"n",axes=F,ann=F,xlim=c(0,nh),ylim=c(0,nv))


# for(i in 1:30){
#     abline(v=i,col="grey")
# }
# 
# for(i in 1:100){
#     abline(h=i,col="grey")
# }

for(i in 0:(round(nv/2)-1)){
    j = i*2
    polygon(c(1,1,nh,nh),c(j,j+1,j+1,j),col=rgb(0.9,0,0,0.05))
}

for(i in 1:round(nh/2)){
    j = i*2
    polygon(c(j,j,j-1,j-1),c(0,nv-1,nv-1,0),col=rgb(0,0,0.9,0.05))
}

for(i in 1:nh){
    for(j in 1:nv){
        text(i-0.5,nv-j+0.5,i*j,cex=1.5)
    }
}




dev.off()
