# A recipe calls for A ounces of flour and B ounces of sugar. You scale the
# recipe to C ounces of flour and x ounces of sugar. Find x.

s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "ratios_hard.csv"

write(s,file=fnam)

fixer = function(ex){
  ex = gsub("")
}

rats = list(c(1,2),c(3,2),c(5,2),c(7,2),c(9,2),
            c(1,3),c(2,3),c(4,3),c(5,3),c(7,3),c(8,3),c(10,3),
            c(1,4),c(3,4),c(5,4),c(7,4),c(9,4),
            c(1,5),c(2,5),c(3,5),c(4,5),c(6,5),c(7,5),c(8,5),c(9,5),
            c(1,6),c(5,6),c(7,6),
            c(1,7),c(2,7),c(3,7),c(4,7),c(5,7),c(6,7),c(8,7),c(9,7),c(10,7),
            c(1,8),c(3,8),c(5,8),c(7,8),c(9,8),
            c(1,9),c(2,9),c(4,9),c(5,9),c(7,9),c(8,9),c(10,9),
            c(1,10),c(3,10),c(7,10),c(9,10))


for(i in 1:1000){
  ratnum = sample(1:length(rats),1)
  rat = rats[[ratnum]]
  mult = sample(1:10,2)
  A = rat[1]*mult[1]
  B = rat[2]*mult[1]
  C = rat[1]*mult[2]
  D = rat[2]*mult[2]
  qstr = paste0("A recipe calls for ",A," ounces of flour and ",B," ounces of sugar. You resize the recipe to use ",C," ounces of flour and x ounces of sugar. Find x.")
  ans = paste0(D)
  q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
  write(q,file=fnam,append=TRUE)
}


