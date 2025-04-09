library(latex2exp)

fixer = function(ex){
  ex = gsub("")
}

s=""


for(i in 1:200){
    print(i)
    qt = sample(1:8,1)
    if(qt==1){ #(x+a)*b+c
        while(T){
            xa = sample(1:9,2,T)
            if(sum(xa)<=10){
                break
            }
        }
        x = xa[1]
        a = xa[2]
        b = sample(2:10,1)
        c = sample(1:9,1)
        d = (x+a)*b+c
        ex1 = paste0(d,"=(x+",a,")\\cdot",b,"+",c)
        ex2 = paste0(d,"=",b,"\\cdot (x+",a,")+",c)
        ex3 = paste0(d,"=",b," (x+",a,")+",c)
        ex4 = paste0("(x+",a,")\\cdot",b,"+",c,"=",d)
        ex5 = paste0(b,"\\cdot (x+",a,")+",c,"=",d)
        ex6 = paste0(b," (x+",a,")+",c,"=",d)
        ex7 = paste0(d,"=",c,"+(x+",a,")\\cdot",b)
        ex8 = paste0(d,"=",c,"+",b,"\\cdot (x+",a,")")
        ex9 = paste0(d,"=",c,"+",b," (x+",a,")")
        ex10 = paste0(c,"+(x+",a,")\\cdot",b,"=",d)
        ex11 = paste0(c,"+",b,"\\cdot (x+",a,")=",d)
        ex12 = paste0(c,"+",b," (x+",a,")=",d)
        exes = c(ex1,ex2,ex3,ex4,ex5,ex6,ex7,ex8,ex9,ex10,ex11,ex12)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==2){ #(x-a)*b
        while(T){
            xa = sample(1:12,2)
            x = xa[1]
            a = xa[2]
            if(x-a>0 && x-a<11){
                break
            }
        }
        b = sample(2:10,1)
        c = (x-a)*b
        ex1 = paste0(c,"=(x-",a,")\\cdot",b)
        ex2 = paste0(c,"=",b,"\\cdot (x-",a,")")
        ex3 = paste0(c,"=",b," (x-",a,")")
        ex4 = paste0("(x-",a,")\\cdot",b,"=",c)
        ex5 = paste0(b,"\\cdot (x-",a,")=",c)
        ex6 = paste0(b," (x-",a,")=",c)
        exes = c(ex1,ex2,ex3,ex4,ex5,ex6)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==3){ #(x+a)/b
        while(T){
            c = sample(1:10,1)
            b = sample(2:10,1)
            if(sample(1:2,1)==1){
                x = sample(1:10,1)
                a = c*b-x
            } else {
                a = sample(1:10,1)
                x = c*b-a
            }
            if(x>0 && a>0){break}
        }
        ex1 = paste0(c,"=\\frac{x+",a,"}{",b,"}")
        ex2 = paste0("\\frac{x+",a,"}{",b,"}=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==4){ #(x-a)/b
        while(T){
            c = sample(1:10,1)
            b = sample(2:10,1)
            if(sample(1:2,1)==1){
                x = sample(1:10,1)
                a = x-c*b
            } else {
                a = sample(1:10,1)
                x = c*b+a
            }
            if(x>0 && a>0){break}
        }
        ex1 = paste0(c,"=\\frac{x-",a,"}{",b,"}")
        ex2 = paste0("\\frac{x-",a,"}{",b,"}=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==5){ #ax+b
        a = sample(2:10,1)
        x = sample(1:10,1)
        b = sample(1:10,1)
        c = a*x+b
        ex1 = paste0(c,"=",a,"x+",b)
        ex2 = paste0(a,"x+",b,"=",c)
        ex3 = paste0(c,"=",b,"+",a,"x")
        ex4 = paste0(b,"+",a,"x=",c)
        exes = c(ex1,ex2,ex3,ex4)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==6){ #ax-b
        while(T){
            a = sample(2:10,1)
            x = sample(1:10,1)
            b = sample(1:10,1)
            c = a*x-b
            if(c>0){break}
        }
        ex1 = paste0(c,"=",a,"x-",b)
        ex2 = paste0(a,"x-",b,"=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==7){ #x/a+b
        cmb = sample(2:10,1)
        b = sample(1:9,1)
        c = cmb+b
        a = sample(2:10,1)
        x = (c-b)*a
        ex1 = paste0(c,"=\\frac{x}{",a,"}+",b)
        ex2 = paste0(c,"=",b,"+\\frac{x}{",a,"}")
        ex3 = paste0("\\frac{x}{",a,"}+",b,"=",c)
        ex4 = paste0(b,"+\\frac{x}{",a,"}=",c)
        exes = c(ex1,ex2,ex3,ex4)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==8){ #x/a-b
        cpb = sample(2:10,1)
        b = sample(1:(cpb-1),1)
        c = cpb-b
        a = sample(2:10,1)
        x = (c+b)*a
        ex1 = paste0(c,"=\\frac{x}{",a,"}-",b)
        ex2 = paste0("\\frac{x}{",a,"}-",b,"=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
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
    ofn = paste0("ts2/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,sol,"\n",collapse="")
}


fileConn<-file("ts2/sols.txt")
writeLines(s, fileConn)
