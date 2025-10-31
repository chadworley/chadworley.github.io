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

for(i in 1:10){
    while(T){
        abcd = sample(1:9,4,T)*sample(c(-1,1),4,T)
        A = abcd[1]
        B = abcd[2]
        C = abcd[3]
        D = abcd[4]
        if(abs(gcd(A,B))==1 && abs(gcd(C,D))==1){break}
    }
    a = A*C
    b = B*C+A*D
    c = B*D
    myex = paste0(pn(c(a,b,c),2:0))
    s2 = "\\documentclass[border=5pt]{standalone}\n\\begin{document}\n$myex$\n\\end{document}"
    s2 = gsub("myex",myex,s2,fixed=T)
    fileConn<-file("tmp.tex")
    writeLines(s2, fileConn)
    close(fileConn)
    xelatex("tmp.tex")
    cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
    ofn = paste0("p1/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,getsols(abcd),"\n",collapse="")
}

fileConn<-file("p1_solutions.txt")
writeLines(s, fileConn)
