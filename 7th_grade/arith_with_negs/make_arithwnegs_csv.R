s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "arith_w_negs.csv"

write(s,file=fnam)

fixer = function(ex){
  ex = gsub("")
}


for(i in 1:1000){
  qtype = sample(1:4,1)
  if(qtype==1 || qtype==2){ #addition
      ab = sample(1:12,2)*sample(c(-1,1),2,T)
      a = ab[1]
      b = ab[2]
      c = a+b
  } else {
      ab = sample(1:12,2,T)*sample(c(-1,1),2,T)
      a = ab[1]
      b = ab[2]
      c = a*b
  }
  if(qtype==1){
      # qstr = paste0("(",a,") + (",b,")",collapse="")
      qstr = paste0("Evaluate the sum of ",a," plus ",b,".",collapse="")
      ans = c
  } else if(qtype==2){
      # qstr = paste0("(",c,") - (",a,")",collapse="")
      qstr = paste0("Evaluate the difference of ",c," minus ",a,".",collapse="")
      ans = b
  } else if(qtype==3){
      # qstr = paste0("(",a,") * (",b,")",collapse="")
      qstr = paste0("Evaluate the product of ",a," times ",b,".",collapse="")
      ans = c
  } else if(qtype==4){
      # qstr = paste0("(",c,") / (",a,")",collapse="")
      qstr = paste0("Evaluate the quotient of ",c," divided by ",a,".",collapse="")
      ans = b
  }
  q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
  write(q,file=fnam,append=TRUE)
}


