w = 500
h = 350

png("wfpp.png",w,h)
par(mar=c(0,0,0,0), xaxs="i", yaxs="i")
rat = 50
xm = w/rat
ym = h/rat
plot(0,0,"n",axes=F,ann=F,xlim=c(0,xm),ylim=c(0,ym))

cols = c("red","orange","yellow","darkgreen","blue","purple","black","white")

polygon(c(0,10,10,0),c(0,0,7,7),col="grey")

r = 0.25
p = list(c(xm/2,ym/2))
th=seq(0,2*pi,pi/100)
for(i in 1:10000){
    randx = runif(1,0,xm)
    randy = runif(1,0,ym)
    polygon(randx+r*cos(th),randy+r*sin(th),border="black",col=sample(cols,1))
}

# for(i in 1:20){
#     for(j in 1:14){
#         polygon((i-0.5)/2+cos(th)/4,(j-0.5)/2+sin(th)/4,border="black",col=sample(cols,1))
#     }
# }



dev.off()