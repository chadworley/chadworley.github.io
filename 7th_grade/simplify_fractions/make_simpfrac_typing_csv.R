s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "simpfrac_typing.csv"
write(s,file=fnam)
dafracs = list(c(1,2),c(3,2),c(5,2),c(7,2),c(9,2),
               c(1,3),c(2,3),c(4,3),c(5,3),c(7,3),c(8,3),
               c(1,4),c(3,4),c(5,4),c(7,4),c(9,4),
               c(1,5),c(2,5),c(3,5),c(4,5),c(6,5),c(7,5),c(8,5),c(9,5),
               c(1,6),c(5,6),c(7,6),
               c(1,7),c(2,7),c(3,7),c(4,7),c(5,7),c(6,7),c(8,7),c(9,7),
               c(1,8),c(3,8),c(5,8),c(7,8),c(9,8),
               c(1,9),c(2,9),c(4,9),c(5,9),c(7,9),c(8,9))

for(i in 1:1000){
    mult = sample(c(2:6,9,10,11,2,3,5),1)
    wf = sample(1:length(dafracs),4)
    f1 = dafracs[[wf[1]]]
    pfq = paste0(f1[1]*mult,"/",f1[2]*mult,collapse="")
    pf1 = paste0(f1[1],"/",f1[2],collapse="")
    qstr = paste0("Simplify the fraction ",pfq,".",collapse="")
    q = paste0(i,',"',qstr,'",',pf1,",,,,12,,,typing",collapse="")
    write(q,file=fnam,append=TRUE)
}


