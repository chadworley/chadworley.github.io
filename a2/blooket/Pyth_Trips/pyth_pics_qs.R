library(latex2exp)

trips = list(c(3, 4, 5),
             c(5, 12, 13),
             c(8, 15, 17),
             c(7, 24, 25),
             c(20, 21, 29),
             c(12, 35, 37),
             c(9, 40, 41),
             c(28, 45, 53),
             c(11, 60, 61),
             c(16, 63, 65),
             c(33, 56, 65),
             c(48, 55, 73),
             c(13, 84, 85),
             c(36, 77, 85),
             c(39, 80, 89),
             c(65, 72, 97))

fixer = function(ex){
  ex = gsub("")
}

s=""

cnt = 0
for(i in 1:length(trips)){
    print(i)
    trip = trips[[i]]
    for(j in 1:3){
        cnt = cnt+1
        fn_pic = paste0("pyth/pyth_",sprintf("%03d",cnt),".png",collapse="")
        png(fn_pic,500,300)
        par(mar=c(0,0,0,0))
        plot(0,0,"n",xlim=c(0,5),ylim=c(0,3),asp=1,ann=F,axes=F)
        polygon(c(0,4,4),c(1,1,3),lwd=8)
        labs = paste(trip)
        labs[j] = "x"
        cex = 5
        text(2,0.5,labs[2],cex=cex)
        text(4.5,2,labs[1],cex=cex)
        text(2,2,labs[3],srt=atan(2/4)/pi*180,adj=c(0.5,-0.5),cex=cex)
        text(5,0.2,"Figure is not drawn to scale.",adj=c(1))
        lines(c(4.7,4.7,5)-1,c(0,0.3,0.3)+1,lwd=6)
        dev.off()
        s = paste0(s,trip[j],"\n",collapse="")
    }
}

fileConn<-file("pyth/sols.txt")
writeLines(s, fileConn)
close(fileConn)


