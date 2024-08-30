s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

write(s,file="arithmetic.csv")

fixer = function(ex){
  ex = gsub("")
}


for(i in 1:1000){
  qtype = sample(1:4,1)
  if(qtype==1 || qtype==2){ #addition
      ab = sample(10:99,2)
      a = ab[1]
      b = ab[2]
      c = a+b
  } else {
      ab = sample(2:13,2,T)
      a = ab[1]
      b = ab[2]
      c = a*b
  }
  if(qtype==1){
      qstr = paste0(a,"+",b,collapse="")
      ans = c
  } else if(qtype==2){
      qstr = paste0(c,"-",a,collapse="")
      ans = b
  } else if(qtype==3){
      qstr = paste0(a,"*",b,collapse="")
      ans = c
  } else if(qtype==4){
      qstr = paste0(c,"/",a,collapse="")
      ans = b
  }
  q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
  write(q,file="arithmetic.csv",append=TRUE)
}


