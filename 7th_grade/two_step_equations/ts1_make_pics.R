library(latex2exp)

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
    minan = sample(1:3,1)
    myt = sample(1:16,1)
    forms = c("A+\\frac{B}{C}",
              "A-\\frac{B}{C}",
              "A+B\\cdot C",
              "A-B\\cdot C",
              "(A+B)\\cdot C",
              "(A-B)\\cdot C",
              "\\frac{A+B}{C}",
              "\\frac{A-B}{C}",
              "A\\cdot B+C",
              "A\\cdot B-C",
              "\\frac{A}{B}+C",
              "\\frac{A}{B}-C",
              "A\\cdot(B+C)",
              "A\\cdot(B-C)",
              "\\frac{A}{B+C}",
              "\\frac{A}{B-C}")
    while(T){
        abc = sample(2:20,3)
        a = abc[1]
        b = abc[2]
        c = abc[3]
        d = foo(a,b,c,myt)
        if(d>=minan && round(d)==d && d<20){break}
    }
    fl = sample(1:2,1)
    if(fl==1){
        ex = paste0(d,"=",forms[myt])
    } else {
        ex = paste0(forms[myt],"=",d)
    }
    abc_unk = sample(1:3,1)
    if(abc_unk==1){
        ex = gsub("A","x",ex,fixed=T)
        ex = gsub("B",b,ex,fixed=T)
        ex = gsub("C",c,ex,fixed=T)
        an = a
    }
    if(abc_unk==2){
        ex = gsub("A",a,ex,fixed=T)
        ex = gsub("B","x",ex,fixed=T)
        ex = gsub("C",c,ex,fixed=T)
        an = b
    }
    if(abc_unk==3){
        ex = gsub("A",a,ex,fixed=T)
        ex = gsub("B",b,ex,fixed=T)
        ex = gsub("C","x",ex,fixed=T)
        an = c
    }
    
    # q = paste0(i,',"',ex,'",',d,",,,,12,,,typing",collapse="")
    # write(q,file="pemdas.csv",append=TRUE)
    # png(paste0("p2/q",sprintf("%03d",i),".png"),500,500)
    # par(mar=c(0,0,0,0),pty="s")
    # plot(0,0,"n",axes=F,ann=F)
    # text(0,0,TeX(paste0("$",ex,"$",collapse="")),cex=6)
    # dev.off()
    
    s2 = "\\documentclass[border=5pt]{standalone}
        \\begin{document}
        $myex$
        \\end{document}"
    s2 = gsub("myex",ex,s2,fixed=T)
    fileConn<-file("tmp.tex")
    writeLines(s2, fileConn)
    close(fileConn)
    tinytex::xelatex("tmp.tex")
    cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
    ofn = paste0("ts1/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,an,"\n",collapse="")
}

fileConn<-file("ts1/sols.txt")
writeLines(s, fileConn)
