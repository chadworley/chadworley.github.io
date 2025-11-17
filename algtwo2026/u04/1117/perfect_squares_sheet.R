
pdf("perfect_squares.pdf",8.5,11)

par(mar=c(1,0,1,0),oma=c(0,0,0,0))
plot(0,0,"n",xlim=c(0,1),ylim=c(0,1.1),axes=F,ann=F)   

text(0.5,1.05,"Perfect Squares")

library(latex2exp)
nc = 5
nr = 20

for(i in 1:nc){
    for(j in 1:nr){
        num = (i-1)*nr+j
        x = i/(nc+1)
        y = 1-j/(nr+1)
        text(x,y,TeX(paste0("$",num,"^2=",num^2,"$")))
    }
}

dev.off()




