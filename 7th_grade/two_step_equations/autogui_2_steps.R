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

eqs = list(c("RAx+SB","SB+RAx"),
           c("FRx#A#+SB","SB+FRx#A#"),
           c("SB(x+RA)","SB(RA+x)","S(x+RA)B","S(RA+x)B"),
           c("FS(RA+x)#B#","FS(x+RA)#B#"))

for(i in 1:1000){
  wht = sample(1:4,1)
  AB = sample(2:9,2)*sample(c(-1,1),2,T)
  A = AB[1]
  B = AB[2]
  while(T){
    x = sample(2:20,1)*sample(c(-1,1),1)
    if(wht==1){
      y = A*x+B
    } else if(wht==2){
      y = x/A+B
    } else if(wht==3){
      y = B*(x+A)
    } else if(wht==4){
      y = (x+A)/B
    } 
    if(y%%1==0 && abs(y)>0 && abs(y)<70){break}
  }
  ex = paste0(y," = ",sample(eqs[[wht]],1))
  ex = gsub("A",abs(A),ex,fixed=T)
  ex = gsub("B",abs(B),ex,fixed=T)
  if(sign(A)==1){
    ex = gsub("R","",ex,fixed=T)
  } else {
    ex = gsub("R","-",ex,fixed=T)
  }
  if(sign(B)==1){
    ex = gsub("S","",ex,fixed=T)
  } else {
    ex = gsub("S","-",ex,fixed=T)
  }
  ex = gsub("+-","-",ex,fixed=T)
  q = paste0(i,',"Solve for x.\n\n',ex,'",',x,",x=",x,",,,60,,,typing",collapse="")
  write(q,file="blooket.csv",append=TRUE)
}


