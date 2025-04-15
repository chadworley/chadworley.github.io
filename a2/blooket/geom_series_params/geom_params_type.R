library(latex2exp)
directory = "v1"

qlist = c()
alist = c()

for(iii in 1:1000){
    ab = sample(2:9,2)
    a = ab[1]
    b = ab[2]
    n = sample(20:98,1)
    qs = c("What is the first term?","What is the common ratio?","How many terms are in the series?")
    q2 = c("a = ?","r = ?","n = ?")
    answers = c(a,b,n)
    qt = sample(1:3,1)
    qt2 = sample(1:2,1)
    if(qt2==1){
        ques = qs[qt]
    } else {
        ques = q2[qt]
    }
    sol = answers[qt]
    png(paste0(directory,"/p",sprintf("%03d",iii),".png",collapse=""),500,300)
    par(mar=c(0,0,0,0))
    plot(0,0,"n",axes=F,ann=F,xlim=c(-1,1),ylim=c(-1,1))
    mystr = paste0("$",a,"+",a,"(",b,")+",a,"(",b,")^2+\\cdots+",a,"(",b,")^{",n-3,"}+",a,"(",b,")^{",n-2,"}+",a,"(",b,")^{",n-1,"}$",collapse="")
    text(0,0,TeX(mystr),cex=1.9)
    dev.off()
    alist = c(alist,sol)
    qlist = c(qlist,ques)
}

fileConn<-file(paste0(directory,"/questions.txt",collapse=""))
writeLines(paste0(qlist,collapse="\n"), fileConn)

fileConn<-file(paste0(directory,"/solutions.txt",collapse=""))
writeLines(paste0(alist,collapse="\n"), fileConn)



