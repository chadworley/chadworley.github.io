library(latex2exp)
library(tinytex)

gcd2 <- function(a, b) {
    if (b == 0) a else Recall(b, a %% b)
}
gcd <- function(...) Reduce(gcd2, c(...))

sols = ""
vars = ""

for(i in 1:300){
    while(T){
        abcd = sample(c(-9:-1,1:9),4)
        a = abcd[1]
        b = abcd[2]
        c = abcd[3]
        d = abcd[4]
        wt = sample(1:4,1)
        if(wt==1){
            c = a
        }
        if(wt==2){
            c = -a
        }
        if(wt==3){
            d = b
        }
        if(wt==4){
            d = -b
        }
        xy = sample(c(-9:-1,1:9),2)
        x = xy[1]
        y = xy[2]
        P = a*x+b*y
        Q = c*x+d*y
        g1 = gcd(c(a,b,P))
        a = round(a/g1)
        b = round(b/g1)
        P = round(P/g1)
        g2 = gcd(c(c,d,Q))
        c = round(c/g2)
        d = round(d/g2)
        Q = round(Q/g2)
        if(sum(c(a,b,P)<0)>1){
            a = -a
            b = -b
            P = -P
        }
        if(sum(c(c,d,Q)<0)>1){
            c = -c
            d = -d
            Q = -Q
        }
        if((a*d-b*c)!=0 && abs(P)>0 && abs(Q)>0 && abs(P)<100 && abs(Q)<100 &&
           (abs(a)==abs(c) || abs(b)==abs(d))){break}
    }
    eq1 = "{a}x+{b}y&=P\\\\{c}x+{d}y&=Q"
    eq1 = gsub("a",a,eq1,fixed=T)
    eq1 = gsub("b",b,eq1,fixed=T)
    eq1 = gsub("P",P,eq1,fixed=T)
    eq1 = gsub("c",c,eq1,fixed=T)
    eq1 = gsub("d",d,eq1,fixed=T)
    eq1 = gsub("Q",Q,eq1,fixed=T)
    eq1 = gsub("{-1}","-",eq1,fixed=T)
    eq1 = gsub("{1}","",eq1,fixed=T)
    eq1 = gsub("{","",eq1,fixed=T)
    eq1 = gsub("}","",eq1,fixed=T)
    eq1 = gsub("+-","-",eq1,fixed=T)
    print(eq1)
    ex = eq1
    s2 = "\\documentclass[border=5pt]{standalone}
\\usepackage{amsmath}
\\begin{document}
$\\begin{aligned}
myex
\\end{aligned}$
\\end{document}"
    s2 = gsub("myex",ex,s2,fixed=T)
    fileConn<-file("tmp.tex")
    writeLines(s2, fileConn)
    close(fileConn)
    xelatex("tmp.tex")
    cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
    ofn = paste0("v3_1/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    sols = paste0(sols,paste0("(",x,",",y,")&(",x,", ",y,")\n",collapse=""))
}

fileConn<-file("v3_1/sols.txt")
writeLines(sols, fileConn)
close(fileConn)


