library(tinytex)
fixer = function(ex){
  ex = gsub("")
}

s=""

foo = function(a,b,c,i){
    if(i==1){return(a+b/c)}
    if(i==2){return(a-b/c)}
    if(i==3){return(a+b*c)}
    if(i==4){return(a-b*c)}
    if(i==5){return((a+b)*c)}
    if(i==6){return((a-b)*c)}
    if(i==7){return((a+b)/c)}
    if(i==8){return((a-b)/c)}
    if(i==9){return(a*b+c)}
    if(i==10){return(a*b-c)}
    if(i==11){return(a/b+c)}
    if(i==12){return(a/b-c)}
    if(i==13){return(a*(b+c))}
    if(i==14){return(a*(b-c))}
    if(i==15){return(a/(b+c))}
    if(i==16){return(a/(b-c))}
}


for(i in 1:300){
    print(i)
    minab = sample(0:3,1)
    myt = sample(1:16,1)
    forms =  list(c("A+\\frac{B}{C}","\\frac{B}{C}+A"),
                  c("A-\\frac{B}{C}","-\\frac{B}{C}+A"),
                  c("A+B\\cdot C","B\\cdot C+A"),
                  c("A-B\\cdot C","-B\\cdot C+A"),
                  c("(A+B)\\cdot C","C\\cdot(A+B)"),
                  c("(A-B)\\cdot C","C\\cdot (A-B)","(-B+A)\\cdot C","C\\cdot (-B+A)"),
                  c("\\frac{A+B}{C}","\\frac{1}{C}\\cdot (A+B)"),
                  c("\\frac{A-B}{C}","\\frac{1}{C}\\cdot (A-B)","\\frac{-B+A}{C}","\\frac{1}{C}\\cdot (-B+A)"),
                  c("A\\cdot B+C","C+A\\cdot B"),
                  c("A\\cdot B-C","-C+A\\cdot B"),
                  c("\\frac{A}{B}+C","C+\\frac{A}{B}"),
                  c("\\frac{A}{B}-C","\\frac{1}{B}\\cdot A-C","-C+\\frac{A}{B}"),
                  c("A\\cdot(B+C)","(B+C)\\cdot A"),
                  c("A\\cdot(B-C)","(B-C)\\cdot A","A\\cdot(-C+B)","(-C+B)\\cdot A"),
                  c("\\frac{A}{B+C}","A\\cdot \\frac{1}{B+C}","\\frac{1}{B+C}\\cdot A"),
                  c("\\frac{A}{B-C}","\\frac{A}{-C+B}","A\\cdot \\frac{1}{B-C}"))
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
    ofn = paste0("p1/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,d,"\n",collapse="")
}

fileConn<-file("solutions_p1.txt")
writeLines(s, fileConn)
