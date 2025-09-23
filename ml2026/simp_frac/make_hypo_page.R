
st = 96
mt = 40
library(latex2exp)

simpfrac = function(top=52,bot=96){
    gcd2 <- function(a, b) {
        if (b == 0) a else Recall(b, a %% b)
    }
    gcd <- function(...) Reduce(gcd2, c(...))
    tsimp = round(top/gcd2(top,bot))
    bsimp = round(bot/gcd2(top,bot))
    ans = paste0("\\frac{",tsimp,"}{",bsimp,"}",collapse="")
    return(ans)
}

# pdf(paste0("hypotrochoid_",st,"_",mt,".pdf"),width = 8.5,height = 11)
pdf(paste0("hypotrochoid_blank.pdf"),width = 8.5,height = 11)

par(mar=c(0,0,0,0),oma=c(0,0,0,0))

plot(0,0,"n",axes=F,ann=F,xlim=c(0,8.5),ylim=c(0,11))

text(8.5/2,9.75,"Hypotrochoid Record Sheet",cex=1.3)
text(5,9.25,"Name: ")
polygon(c(1,1,7.5,7.5),c(10,9.5,9.5,10)-1)
text(2.5,9.75-1,"Stationary teeth: ",adj=1)
# text(2.75,9.75-1,paste0("Inside ring with ",st," teeth",collapse=""),adj=0,col="red")
polygon(c(1,1,7.5,7.5),c(10,9.5,9.5,10)-1.5)
text(2.5,9.25-1,"Mobile teeth: ",adj=1)
# text(2.75,9.25-1,paste0("Circle with ",mt," teeth"),adj=0,col="red")
polygon(c(1,1,7.5,7.5),c(10,9.5,9.5,10)-2)
text(2.5,8.75-1,"Simplified ratio: ",adj=1)
# text(2.75,8.75-1,TeX(paste0("$\\frac{",st,"}{",mt,"}\\, = \\,",simpfrac(st,mt),"$",collapse="")),adj=0,col="red")
text(2.5,8.75-1.5,"Drawings:",adj=1)

polygon(c(1,1,7.5,7.5),c(1,1.5,1.5,1))
text(2.5,1.25,"Number of petals: ",adj=1)

dev.off()



