s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

# maybe <br> instead of \n

write(s,file="blooket.csv")

fixer = function(ex){
    ex = gsub("")
}

# ex = '1,"Solve for x.\n\n 36=2x+8",14,x=14,,,,,,typing'
# ÷

eqs = list(c("A+x=B","x+A=B","B=x+A","B=A+x"),
           c("A-x=B","B=A-x"),
           c("x-A=B","B=x-A"),
           c("A*x=B","x*A=B","B=A*x","B=x*A"),
           c("A/x=B","B=A/x"),
           c("x/A=B","B=x/A")
)

for(i in 1:1000){
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
    q = paste0(i,',"Solve for x.\n\n',ex,'",',x,",x=",x,",,,60,,,typing",collapse="")
    write(q,file="ose_blooket.csv",append=TRUE)
}
