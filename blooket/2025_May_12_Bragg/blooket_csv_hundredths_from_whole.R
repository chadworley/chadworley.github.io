s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

write(s,file="one_minus_x_hundredths.csv")

fixer = function(ex){
  ex = gsub("")
}


for(i in 1:99){
  qstr = paste0("1 - ",round(i/100,2),collapse="")
  ans1 = paste0(round(1-i/100,2))
  ans2 = gsub("0.",".",ans1,fixed=T)
  q = paste0(i,',',qstr,',',ans1,",",ans2,",,,12,,,typing",collapse="")
  write(q,file="one_minus_x_hundredths.csv",append=TRUE)
}


