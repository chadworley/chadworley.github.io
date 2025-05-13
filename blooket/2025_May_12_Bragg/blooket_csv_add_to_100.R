s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fn = "add_to_100.csv"

write(s,file=fn)

fixer = function(ex){
  ex = gsub("")
}


for(i in 1:99){
  qstr = paste0(i," + ____ = 100",collapse="")
  ans1 = 100-i
  q = paste0(i,',',qstr,',',ans1,",,,,300,,,typing",collapse="")
  write(q,file=fn,append=TRUE)
}


