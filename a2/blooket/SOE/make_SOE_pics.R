library(latex2exp)

which_type = 3 #sample(1:4,1)
while(which_type==1){
    # ax+by = P
    # ax+dy = Q
    # y = (P-Q)/(b-d)
    a = sample(c(-9:-1,1:9),1)
    c = a
    y = sample(c(-9:-1,1:9),1)
    bmd = sample(c(-9:-1,1:9),1)
    d = sample(c(-9:-1,1:9),1)
    b = d+bmd
    pmq = bmd*y
    Q = sample(c(-40:-1,1:40),1)
    P = Q+pmq
    solvefor = "y"
    val = y
    if(max(abs(c(a,b,c,d,y)))<11 && min(abs(c(a,b,c,d,y)))>0 && max(abs(c(P,Q)))<41  && min(abs(c(P,Q)))>0){break}
}
while(which_type==2){
    # ax+by = P
    # -ax+dy = Q
    # y = (P+Q)/(b+d)
    a = sample(c(-9:-1,1:9),1)
    c = -a
    y = sample(c(-9:-1,1:9),1)
    bpd = sample(c(-9:-1,1:9),1)
    d = sample(c(-9:-1,1:9),1)
    b = bpd-d
    ppq = bpd*y
    Q = sample(c(-40:-1,1:40),1)
    P = ppq-Q
    solvefor = "y"
    val = y
    if(max(abs(c(a,b,c,d,y)))<11 && min(abs(c(a,b,c,d,y)))>0 && max(abs(c(P,Q)))<41  && min(abs(c(P,Q)))>0){break}
}
while(which_type==3){
    # ax+by = P
    # ax+dy = Q
    # y = (P-Q)/(b-d)
    a = sample(c(-9:-1,1:9),1)
    c = a
    y = sample(c(-9:-1,1:9),1)
    bmd = sample(c(-9:-1,1:9),1)
    d = sample(c(-9:-1,1:9),1)
    b = d+bmd
    pmq = bmd*y
    Q = sample(c(-40:-1,1:40),1)
    P = Q+pmq
    solvefor = "x"
    val = y
    aa = a
    bb = b
    cc = c
    dd = d
    PP = P
    QQ = Q
    a = cc
    b = dd
    c = aa
    d = bb
    P = QQ
    Q = PP
    if(max(abs(c(a,b,c,d,y)))<11 && min(abs(c(a,b,c,d,y)))>0 && max(abs(c(P,Q)))<41  && min(abs(c(P,Q)))>0){break}
}
while(which_type==4){
    # ax+by = P
    # -ax+dy = Q
    # y = (P+Q)/(b+d)
    a = sample(c(-9:-1,1:9),1)
    c = -a
    y = sample(c(-9:-1,1:9),1)
    bpd = sample(c(-9:-1,1:9),1)
    d = sample(c(-9:-1,1:9),1)
    b = bpd-d
    ppq = bpd*y
    Q = sample(c(-40:-1,1:40),1)
    P = ppq-Q
    solvefor = "x"
    val = y
    aa = a
    bb = b
    cc = c
    dd = d
    PP = P
    QQ = Q
    a = cc
    b = dd
    c = aa
    d = bb
    P = QQ
    Q = PP
    if(max(abs(c(a,b,c,d,y)))<11 && min(abs(c(a,b,c,d,y)))>0 && max(abs(c(P,Q)))<41  && min(abs(c(P,Q)))>0){break}
}
eq1 = "{a}x+{b}y&=P\\{c}x+{d}y&=Q"
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



#     
#     s2 = "\\documentclass[border=5pt]{standalone}
# \usepackage{amsmath}
# \\begin{document}
# $myex$
# \\end{document}"
#     s2 = gsub("myex",ex,s2,fixed=T)
#     fileConn<-file("tmp.tex")
#     writeLines(s2, fileConn)
#     close(fileConn)
#     xelatex("tmp.tex")
#     cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
#     ofn = paste0("p3/q",sprintf("%03d",i),".png")
#     cmand = gsub("FOPNG",ofn,cmand,fixed=T)
#     system(cmand)
#     s = paste0(s,d,"\n",collapse="")


# fileConn<-file("solutions_p3.txt")
# writeLines(s, fileConn)
