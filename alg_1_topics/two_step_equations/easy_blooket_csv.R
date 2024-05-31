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

eqs = list(c("A*x+B"),
           c("x/A+B"),
           c("(x+A)*B"),
           c("(x+A)/B"),
           "A*x-B",
           "x/A-B",
           "(x-A)*B",
           "(x-A)/B")

for(i in 1:1000){
  wht = sample(1:length(eqs),1)
  while(T){
    AB = sample(2:12,2)#*sample(c(-1,1),2,T)
    A = AB[1]
    B = AB[2]
    x = sample(2:20,1)
    if(wht==1){
      y = A*x+B
    } else if(wht==2){
      y = x/A+B
    } else if(wht==3){
      y = B*(x+A)
    } else if(wht==4){
      y = (x+A)/B
    } else if(wht==5){
      y = A*x-B
    } else if(wht==6){
      y = x/A-B
    } else if(wht==7){
      y = B*(x-A)
    } else if(wht==8){
      y = (x-A)/B
    } 
    if(y%%1==0 && abs(y)>1 && abs(y)<100 && abs(x)!=abs(A) && y>1 &&
       x!=A && x!=B && x!=y && y!=A && y!=B){break}
  }
  ex = paste0(y," = ",sample(eqs[[wht]],1))
  ex = gsub("A",abs(A),ex,fixed=T)
  ex = gsub("B",abs(B),ex,fixed=T)
  ex = gsub("+-","-",ex,fixed=T)
  q = paste0(i,',"Solve for x.\n\n',ex,'",',x,",x=",x,",,,60,,,typing",collapse="")
  write(q,file="blooket.csv",append=TRUE)
}


