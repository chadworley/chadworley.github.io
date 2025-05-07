pdf("slide_rule.pdf",8.5,11)

a = 3
bmp = 0.1

par(mar=c(0,0,0,0))
plot(0,0,"n",xlim=c(0,2),ylim=c(0-bmp,2+bmp),axes=F,ann=F)
for(i in seq(1.2,9.8,0.2)){
    for(j in 0:1){
        num = i*10^j
        y = log10(num)
        lines(c(0.3,0.5),c(y,y),col="darkgrey")
    }
}
for(i in seq(1.2,9.8,0.2)){
    num = i
    y2 = log10(num*a)
    lines(c(1.5,1.7),c(y2,y2),col="darkgrey")
}
# for(i in seq(1.1,9.9,0.1)){
#     for(j in 0:1){
#         num = i*10^j
#         y = log10(num)
#         lines(c(0.4,0.5),c(y,y),col="black",lwd=0.5)
#     }
# }
# for(i in seq(1.1,9.9,0.1)){
#     num = i
#     y2 = log10(num*a)
#     lines(c(1.5,1.6),c(y2,y2),col="black",lwd=0.5)
# }
# for(i in seq(1.5,9.5,1)){
#     for(j in 0:1){
#         num = i*10^j
#         y = log10(num)
#         lines(c(0.25,0.5),c(y,y),col="black",lwd=0.8)
#     }
# }
# for(i in seq(1.5,9.5,1)){
#     num = i
#     y2 = log10(num*a)
#     lines(c(1.5,1.75),c(y2,y2),col="black",lwd=0.8)
# }
nums = c(1:9,(1:9)*10,100)
for(num in nums){
    y = log10(num)
    lines(c(0.2,0.5),c(y,y))
    text(0.1,y,num)
}
for(num in 1:10){
    y2 = log10(num*a)
    lines(c(1.5,1.8),c(y2,y2))
    text(1.9,y2,num)
}

abline(v=1)

polygon(c(0,0.5,0.5,0),c(0-bmp,0-bmp,2+bmp,2+bmp))
polygon(c(1,0.5,0.5,1)+1,c(0-bmp,0-bmp,1+bmp,1+bmp)+log10(a))


dev.off()

