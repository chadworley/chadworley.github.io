
pdf("perfect_squares.pdf",8.5,11,onefile = T)

par(mar=c(1,0,1,0),oma=c(0,0,0,0))
plot(0,0,"n",xlim=c(0,1),ylim=c(0,1.1),axes=F,ann=F)   

text(0.5,1.05,"Perfect-Square Integers")

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


par(mar=c(1,0,1,0),oma=c(0,0,0,0))
plot(0,0,"n",xlim=c(0,1),ylim=c(0,1.1),axes=F,ann=F)   
text(0.5,1.05,"Perfect-Square Trinomials with a=1")

pn = function(c,d){
    cc = c[c!=0]
    dd = d[c!=0]
    p = paste0("{",cc,"}x^{",dd,"}",collapse="+")
    p = gsub("x^{0}","",p,fixed=T)
    p = gsub("x^{1}","x",p,fixed=T)
    p = gsub("+{-","-{",p,fixed=T)
    p = gsub("+{1}x","+x",p,fixed=T)
    p = gsub("-{1}x","-x",p,fixed=T)
    p = gsub("{-1}x","-x",p,fixed=T)
    p = gsub("{1}x","x",p,fixed=T)
    p = gsub("{","",p,fixed=T)
    p = gsub("}","",p,fixed=T)
    return(p)
}

n = 30
for(i in 1:n){
    tt = paste0("$(x-",i,")^2$  $\\equiv$  $",pn(c(1,-2*i,i^2),2:0),"$")
    text(0.25,1-i/(n+1),TeX(tt))
}
for(i in 1:n){
    tt = paste0("$(x+",i,")^2$  $\\equiv$  $",pn(c(1,2*i,i^2),2:0),"$")
    text(0.75,1-i/(n+1),TeX(tt))
}


dev.off()




