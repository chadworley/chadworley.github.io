library(latex2exp)

fixer = function(ex){
  ex = gsub("")
}

s=""

for(i in 1:500){
    print(i)
    qt = sample(1:16,1)
    if(qt==1){ #(x+a)*b
        while(T){
            a = sample(1:9,1)
            x = sample(-10:10,1)
            if(abs(a+x)<=10){
                break
            }
        }
        b = sample(2:10,1)
        c = (x+a)*b
        ex1 = paste0(c,"=(x+",a,")\\cdot",b)
        ex2 = paste0(c,"=",b,"\\cdot (x+",a,")")
        ex3 = paste0(c,"=",b," (x+",a,")")
        ex4 = paste0("(x+",a,")\\cdot",b,"=",c)
        ex5 = paste0(b,"\\cdot (x+",a,")=",c)
        ex6 = paste0(b," (x+",a,")=",c)
        exes = c(ex1,ex2,ex3,ex4,ex5,ex6)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==2){ #(x-a)*b
        while(T){
            x = sample(-12:12,1)
            a = sample(1:12,1)
            if(abs(x-a)<11){
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
            c = sample(1:10,1)*sample(c(-1,1),1)
            b = sample(2:10,1)
            if(sample(1:2,1)==1){
                x = sample(-10:10,1)
                a = c*b-x
            } else {
                a = sample(1:10,1)
                x = c*b-a
            }
            if(a>0){break}
        }
        ex1 = paste0(c,"=\\frac{x+",a,"}{",b,"}")
        ex2 = paste0("\\frac{x+",a,"}{",b,"}=",c)
        # ex3 = paste0(c,"=(x+",a,")\\cdot \\frac{1}{",b,"}")
        # ex4 = paste0("\\frac{1}{",b,"}\\cdot (x+",a,")=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==4){ #(x-a)/b
        while(T){
            c = sample(1:10,1)*sample(c(-1,1),1)
            b = sample(2:10,1)
            if(sample(1:2,1)==1){
                x = sample(-10:10,1)
                a = x-c*b
            } else {
                a = sample(1:10,1)
                x = c*b+a
            }
            if(a>0){break}
        }
        ex1 = paste0(c,"=\\frac{x-",a,"}{",b,"}")
        ex2 = paste0("\\frac{x-",a,"}{",b,"}=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==5){ #ax+b
        a = sample(2:10,1)
        x = sample(-10:10,1)
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
        a = sample(2:10,1)
        x = sample(-10:10,1)
        b = sample(1:10,1)
        c = a*x-b
        ex1 = paste0(c,"=",a,"x-",b)
        ex2 = paste0(a,"x-",b,"=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==7){ #x/a+b
        cmb = sample(2:10,1)*sample(c(-1,1),1)
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
        cpb = sample(2:10,1)*sample(c(-1,1),1)
        b = sample(1:9,1)
        c = cpb-b
        a = sample(2:10,1)
        x = (c+b)*a
        ex1 = paste0(c,"=\\frac{x}{",a,"}-",b)
        ex2 = paste0("\\frac{x}{",a,"}-",b,"=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==9){ #c = -b(x-a)
        while(T){
            x = sample(-12:12,1)
            a = sample(1:12,1)
            if(abs(x-a)<11){
                break
            }
        }
        b = sample(2:10,1)
        c = (x-a)*(-b)
        ex1 = paste0(c,"=-(x-",a,")\\cdot",b)
        ex2 = paste0(c,"=-",b,"\\cdot (x-",a,")")
        ex3 = paste0(c,"=-",b," (x-",a,")")
        ex4 = paste0("-(x-",a,")\\cdot",b,"=",c)
        ex5 = paste0(-b,"\\cdot (x-",a,")=",c)
        ex6 = paste0(-b," (x-",a,")=",c)
        exes = c(ex1,ex2,ex3,ex4,ex5,ex6)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==10){ #c = -ax+b
        a = sample(2:10,1)
        x = sample(-10:10,1)
        b = sample(1:10,1)
        c = -a*x+b
        ex1 = paste0(c,"=",-a,"x+",b)
        ex2 = paste0(-a,"x+",b,"=",c)
        ex3 = paste0(c,"=",b,"-",a,"x")
        ex4 = paste0(b,"-",a,"x=",c)
        exes = c(ex1,ex2,ex3,ex4)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==11){ #c = -(x+a)*b
        while(T){
            a = sample(1:9,1)
            x = sample(-10:10,1)
            if(abs(x+a)<=10){
                break
            }
        }
        b = sample(2:10,1)
        c = -(x+a)*b
        ex1 = paste0(c,"=-(x+",a,")\\cdot",b)
        ex2 = paste0(c,"=",-b,"\\cdot (x+",a,")")
        ex3 = paste0(c,"=",-b," (x+",a,")")
        ex4 = paste0("-(x+",a,")\\cdot",b,"=",c)
        ex5 = paste0(-b,"\\cdot (x+",a,")=",c)
        ex6 = paste0(-b," (x+",a,")=",c)
        exes = c(ex1,ex2,ex3,ex4,ex5,ex6)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==12){ #-ax-b
        a = sample(2:10,1)
        x = sample(-10:10,1)
        b = sample(1:10,1)
        c = -a*x-b
        ex1 = paste0(c,"=",-a,"x-",b)
        ex2 = paste0(-a,"x-",b,"=",c)
        ex3 = paste0(c,"=",-b,"-",a,"x")
        ex4 = paste0(-b,"-",a,"x=",c)
        exes = c(ex1,ex2,ex3,ex4)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==13){ #c = (-x-a)/b
        while(T){
            c = sample(1:10,1)*sample(c(-1,1),1)
            b = sample(2:10,1)
            if(sample(1:2,1)==1){
                x = sample(-10:10,1)
                a = -x-c*b
            } else {
                a = sample(1:10,1)
                x = -c*b-a
            }
            if(a>0){break}
        }
        ex1 = paste0(c,"=\\frac{-x-",a,"}{",b,"}")
        ex2 = paste0("\\frac{-x-",a,"}{",b,"}=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==14){ #-x/a-b
        cpb = sample(2:10,1)*sample(c(-1,1),1)
        b = sample(1:9,1)
        c = cpb-b
        a = sample(2:10,1)
        x = -(c+b)*a
        ex1 = paste0(c,"=\\frac{-x}{",a,"}-",b)
        ex2 = paste0("\\frac{-x}{",a,"}-",b,"=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==15){ #(-x+a)/b
        while(T){
            c = sample(1:10,1)*sample(c(-1,1),1)
            b = sample(2:10,1)
            if(sample(1:2,1)==1){
                x = sample(-10:10,1)
                a = c*b+x
            } else {
                a = sample(1:10,1)
                x = -(c*b-a)
            }
            if(a>0){break}
        }
        ex1 = paste0(c,"=\\frac{-x+",a,"}{",b,"}")
        ex2 = paste0("\\frac{-x+",a,"}{",b,"}=",c)
        ex3 = paste0(c,"=\\frac{",a,"-x}{",b,"}")
        ex4 = paste0("\\frac{",a,"-x}{",b,"}=",c)
        exes = c(ex1,ex2)
        ex = sample(exes,1)
        sol = x
    }
    if(qt==16){ #c = -x/a+b
        cmb = sample(2:10,1)*sample(c(-1,1),1)
        b = sample(1:9,1)
        c = cmb+b
        a = sample(2:10,1)
        x = -(c-b)*a
        ex1 = paste0(c,"=\\frac{-x}{",a,"}+",b)
        ex2 = paste0(c,"=",b,"-\\frac{x}{",a,"}")
        ex3 = paste0("\\frac{-x}{",a,"}+",b,"=",c)
        ex4 = paste0(b,"-\\frac{x}{",a,"}=",c)
        exes = c(ex1,ex2,ex3,ex4)
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
    ofn = paste0("p1/q",sprintf("%03d",i),".png")
    cmand = gsub("FOPNG",ofn,cmand,fixed=T)
    system(cmand)
    s = paste0(s,sol,"\n",collapse="")
}

fileConn<-file("p1_sols.txt")
writeLines(s, fileConn)
