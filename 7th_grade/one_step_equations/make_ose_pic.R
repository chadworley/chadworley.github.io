set.seed(123)

fixer = function(ex){
    ex = gsub("")
}

eqs = list(c("A+x=B","x+A=B","B=x+A","B=A+x"),
           c("A-x=B","B=A-x"),
           c("x-A=B","B=x-A"),
           c("A x=B","x\\cdot A=B","B=A x","B=x\\cdot A"),
           c("\\frac{A}{x}=B","B=\\frac{A}{x}"),
           c("\\frac{x}{A}=B","B=\\frac{x}{A}")
)

s=""

for(i in 1:300){
    wht = sample(1:6,1)
    AxB = sample(2:9,3)
    A = AxB[1]
    x = AxB[2]
    B = AxB[3]
    while(T){
        if(wht==1){
            B = A+x
        } else if(wht==2){
            A = x+B
        } else if(wht==3){
            x = A+B
        } else if(wht==4){
            B = A*x
        } else if(wht==5){
            A = x*B
        } else if(wht==6){
            x = A*B
        } 
        if(max(abs(c(A,x,B)))<100 && min(abs(c(A,x,B)))>0){break}
    }
    ex = sample(eqs[[wht]],1)
    ex = gsub("A",A,ex,fixed=T)
    ex = gsub("B",B,ex,fixed=T)
    ex = gsub("+-","-",ex,fixed=T)
    # q = paste0(i,',"Solve for x.\n\n',ex,'",',x,",x=",x,",,,60,,,typing",collapse="")
    # write(q,file="ose_blooket.csv",append=TRUE)
    s2 = "\\documentclass[border=5pt]{standalone}
        \\begin{document}
        $myex$
        \\end{document}"
    s2 = gsub("myex",ex,s2,fixed=T)
    fileConn<-file("tmp.tex")
    writeLines(s2, fileConn)
    close(fileConn)
    xelatex("tmp.tex")
    cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
    ofn = paste0("p1/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,x,"\n",collapse="")
}

fileConn<-file("solutions_p1.txt")
writeLines(s, fileConn)
