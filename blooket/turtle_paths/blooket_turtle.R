library(tinytex)
fixer = function(ex){
  ex = gsub("")
}

s=""

paths = c("F+F+FF")


for(i in 1:300){
    print(i)
    minab = sample(0:3,1)
    myt = sample(1:17,1)
    forms =  list(c("A+\\frac{B}{C}","\\frac{B}{C}+A","A+\\frac{-B}{-C}","\\frac{-B}{-C}+A"),
                  c("A-\\frac{B}{C}","\\frac{-B}{C}+A","\\frac{B}{-C}+A"),
                  c("-A+\\frac{B}{C}","\\frac{B}{C}-A"),
                  c("-A-\\frac{B}{C}","\\frac{-B}{C}-A","\\frac{B}{-C}-A"),
                  
                  c("A+B\\cdot C","B\\cdot C+A"),
                  c("A-B\\cdot C","-B\\cdot C+A","A+B\\cdot (-C)"),
                  c("-A+B\\cdot C","B\\cdot C-A"),
                  c("-A-B\\cdot C","-B\\cdot C-A","B\\cdot (-C)-A","-A+B\\cdot (-C)"),
                  
                  c("(A+B)\\cdot C","C\\cdot(A+B)"),
                  c("(A-B)\\cdot C","C\\cdot (A-B)","(-B+A)\\cdot C","C\\cdot (-B+A)"),
                  c("(-A-B)\\cdot C","C\\cdot(-A-B)","-(A+B)\\cdot C","-C\\cdot(A+B)"),
             
                  c("\\frac{A+B}{C}","\\frac{1}{C}\\cdot (A+B)"),
                  c("\\frac{A-B}{C}","\\frac{1}{C}\\cdot (A-B)","\\frac{-B+A}{C}","\\frac{1}{C}\\cdot (-B+A)"),
                  c("\\frac{-A-B}{C}","\\frac{-1}{C}\\cdot (A+B)","\\frac{A+B}{-C}","\\frac{1}{C}\\cdot (-A-B)"),
                  
                  c("\\frac{A}{B+C}","A\\cdot \\frac{1}{B+C}","\\frac{1}{B+C}\\cdot A"),
                  c("\\frac{A}{B-C}","\\frac{A}{-C+B}","A\\cdot \\frac{1}{B-C}","\\frac{1}{B-C}\\cdot A","A\\cdot \\frac{1}{-C+B}","\\frac{1}{-C+B}\\cdot A"),
                  c("\\frac{-A}{B+C}","\\frac{A}{-B-C}","-A\\cdot \\frac{1}{B+C}","\\frac{-1}{B+C}\\cdot A","\\frac{1}{B+C}\\cdot (-A)"))
    while(T){
        abc = sample(2:20,3)
        a = abc[1]
        b = abc[2]
        c = abc[3]
        d = foo(a,b,c,myt)
        if(round(d)==d && abs(d)<20 && abs(d)>minab){break}
    }
    ex = sample(forms[[myt]],1)
    ex = gsub("A",a,ex,fixed=T)
    ex = gsub("B",b,ex,fixed=T)
    ex = gsub("C",c,ex,fixed=T)
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
    ofn = paste0("p2/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,d,"\n",collapse="")
}

fileConn<-file("solutions_p2.txt")
writeLines(s, fileConn)
