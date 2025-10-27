library(tinytex)
fixer = function(ex){
  ex = gsub("")
}

s=""

opex = c("A+B","A-B","A\\cdot B","A \\div B")

plusem = function(a,b){
    a1 = paste0(a)
    b1 = paste0(b)
    if(a<0){
        a1 = paste0("(",a,")",collapse="")
    }
    if(b<0){
        b1 = paste0("(",b,")",collapse="")
    }
    ss = paste0(a1,"+",b1,"=",a+b,collapse="")
}

subem = function(a,b){
    a1 = paste0(a)
    b1 = paste0(b)
    if(a<0){
        a1 = paste0("(",a,")",collapse="")
    }
    if(b<0){
        b1 = paste0("(",b,")",collapse="")
    }
    ss = paste0(a1,"-",b1,"=",a-b,collapse="")
}

multem = function(a,b){
    a1 = paste0(a)
    b1 = paste0(b)
    if(a<0){
        a1 = paste0("(",a,")",collapse="")
    }
    if(b<0){
        b1 = paste0("(",b,")",collapse="")
    }
    ss = paste0(a1,"\\cdot",b1,"=",a*b,collapse="")
}

divem = function(a,b){
    c = a*b
    a1 = paste0(a)
    b1 = paste0(b)
    c1 = paste0(c)
    if(a<0){
        a1 = paste0("(",a,")",collapse="")
    }
    if(b<0){
        b1 = paste0("(",b,")",collapse="")
    }
    if(c<0){
        c1 = paste0("(",c,")",collapse="")
    }
    if(b==0){
        ss = paste0(c1,"\\div",b1,"=NaN",collapse="")
    } else {
        ss = paste0(c1,"\\div",b1,"=",a,collapse="")
    }
}

makem = list(plusem,
             subem,
             multem,
             divem)



pn = 0
for(i in 1:1000){
    abcd = sample(1:9,4,T)*sample(c(-1,1),4,T)
    pn = pn+1
    e1 = plusem(prod(abcd[1:2]),prod(abcd[3:4]))
    elr = strsplit(e1,"=")[[1]]
    el = elr[1]
    er = elr[2]
    myex = el
    s2 = "\\documentclass[border=5pt]{standalone}\n\\begin{document}\n$myex$\n\\end{document}"
    s2 = gsub("myex",myex,s2,fixed=T)
    fileConn<-file("tmp.tex")
    writeLines(s2, fileConn)
    close(fileConn)
    xelatex("tmp.tex")
    cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
    ofn = paste0("p3/q",sprintf("%03d",pn),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,er,"\n",collapse="")
}

fileConn<-file("p3_solutions.txt")
writeLines(s, fileConn)
