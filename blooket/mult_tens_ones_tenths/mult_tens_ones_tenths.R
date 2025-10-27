library(tinytex)
fixer = function(ex){
  ex = gsub("")
}

s=""


pn = 0
for(i in 1:9){
    for(j in 1:9){
        for(k in -1:1){
            for(l in -1:1){
                pn = pn+1
                a = i*10^k
                b = j*10^l
                c = a*b
                c1 = paste0(c)
                myex = paste0(a,"\\cdot ",b,collapse="")
                s2 = "\\documentclass[border=5pt]{standalone}\n\\begin{document}\n$myex$\n\\end{document}"
                s2 = gsub("myex",myex,s2,fixed=T)
                fileConn<-file("tmp.tex")
                writeLines(s2, fileConn)
                close(fileConn)
                xelatex("tmp.tex")
                cmand = "magick -density 600 tmp.pdf -background white -flatten FOPNG"
                ofn = paste0("p1/q",sprintf("%03d",pn),".png")
                cmand = gsub("FOPNG",ofn,cmand,fixed=T)
                system(cmand)
                s = paste0(s,c,"\n",collapse="")
            }
        }
    }
}
# 
# fileConn<-file("solutions_p2.txt")
# writeLines(s, fileConn)
