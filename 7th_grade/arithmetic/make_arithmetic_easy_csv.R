s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fn = "arithmetic_easy.csv"

write(s,file=fn)

fixer = function(ex){
  ex = gsub("")
}


for(a in 1:10){
    for(b in 1:10){
        c = a+b
        qstr = paste0(a,"+",b,collapse="")
        ans = c
        q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
        write(q,file=fn,append=TRUE)
        qstr = paste0(c,"-",a,collapse="")
        ans = b
        q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
        write(q,file=fn,append=TRUE)
        c = a*b
        qstr = paste0(a,"*",b,collapse="")
        ans = c
        q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
        write(q,file=fn,append=TRUE)
        qstr = paste0(c,"/",a,collapse="")
        ans = b
        q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
        write(q,file=fn,append=TRUE)
    }
}



