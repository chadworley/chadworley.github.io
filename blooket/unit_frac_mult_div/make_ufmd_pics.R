library(tinytex)
fixer = function(ex){
  ex = gsub("")
}

s=""

k = 0
for(i in 2:10){
    for(j in 1:10){
        k = k+1
        ex = "A \\cdot \\frac{1}{B}"
        ex = gsub("A",i*j,ex,fixed=T)
        ex = gsub("B",i,ex,fixed=T)
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
        ofn = paste0("p1/q",sprintf("%03d",k),".png")
        cmand = gsub("FOPNG",ofn,cmand,fixed=T)
        system(cmand)
        s = paste0(s,j,"\n",collapse="")
    }
}

for(i in 1:10){
    for(j in 2:10){
        k = k+1
        ex = "A \\div \\frac{1}{B}"
        ex = gsub("A",i,ex,fixed=T)
        ex = gsub("B",j,ex,fixed=T)
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
        ofn = paste0("p1/q",sprintf("%03d",k),".png")
        cmand = gsub("FOPNG",ofn,cmand,fixed=T)
        system(cmand)
        s = paste0(s,i*j,"\n",collapse="")
    }
}

fileConn<-file("solutions_p1.txt")
writeLines(s, fileConn)
