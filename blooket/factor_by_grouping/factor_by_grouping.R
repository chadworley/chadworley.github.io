library(tinytex)

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
    return(p)
}

pfix = function(c,d){
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
    return(p)
}

getsols = function(abcd){
    A = abcd[1]
    B = abcd[2]
    C = abcd[3]
    D = abcd[4]
    sol1 = paste0("(",A,"x+",B,")(",C,"x+",D,")")
    sol1 = gsub("+-","-",sol1,fixed=T)
    sol1 = gsub("1x","x",sol1,fixed=T)
    sol2 = paste0("(",C,"x+",D,")(",A,"x+",B,")")
    sol2 = gsub("+-","-",sol2,fixed=T)
    sol2 = gsub("1x","x",sol2,fixed=T)
    sol3 = paste0("(",-A,"x+",-B,")(",-C,"x+",-D,")")
    sol3 = gsub("+-","-",sol3,fixed=T)
    sol3 = gsub("1x","x",sol3,fixed=T)
    sol4 = paste0("(",-C,"x+",-D,")(",-A,"x+",-B,")")
    sol4 = gsub("+-","-",sol4,fixed=T)
    sol4 = gsub("1x","x",sol4,fixed=T)
    sols = paste0(c(sol1,sol2,sol3,sol4),collapse="#")
}

gcd2 <- function(a, b) {
    if (b == 0) a else Recall(b, a %% b)
}
gcd <- function(...) Reduce(gcd2, c(...))

s=""

set.seed(30)

for(i in 1:100){
    while(T){
        PQRS = sample(2:9,4,T)
        P = PQRS[1]
        Q = PQRS[2]*sample(c(-1,1),1)
        R = PQRS[3]
        S = PQRS[4]*sample(c(-1,1),1)
        pr = prod(c(P,Q,R,S))
        su = P*S+Q*R
        a = P*R
        b = su
        c = Q*S
        addend1 = P*S
        addend2 = Q*R
        ads = c(addend1,addend2)
        ch1 = pfix(c(P,Q),1:0)
        ch2 = pfix(c(R,S),1:0)
        if(abs(gcd(P,Q))==1 && abs(gcd(R,S))==1 && ch1!=ch2){break}
    }
    ch1 = pfix(c(P,Q),1:0)
    ch2 = pfix(c(R,S),1:0)
    
    chs = c(ch1,ch2)
    abcd = c(P,Q,R,S)
    
    myex = paste0(pn(c(a,addend1,addend2,c),c(2,1,1,0)))
    s2 = "\\documentclass[border=5pt]{standalone}\n\\begin{document}\n$myex$\n\\end{document}"
    s2 = gsub("myex",myex,s2,fixed=T)
    fileConn<-file("tmp.tex")
    writeLines(s2, fileConn)
    close(fileConn)
    xelatex("tmp.tex")
    cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
    ofn = paste0("p2/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,getsols(abcd),"\n",collapse="")
}

fileConn<-file("p2_solutions.txt")
writeLines(s, fileConn)
close(fileConn)
