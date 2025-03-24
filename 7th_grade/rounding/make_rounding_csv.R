s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fn = "rounding.csv"

write(s,file=fn)

fixer = function(ex){
  ex = gsub("")
}

pvn = c("thousandth","hundredth","tenth","unit","ten","hundred","thousand")

for(i in 1:1000){
    dig = sample(-3:3,1)
    while(T){
        if(dig>=0){
            num = 10^runif(1,dig-0.5,dig+4)
        } else {
            num = 10^runif(1,dig,dig+4)
        }
        if(num<100000 && num>0.001){break}
    }
    ans = round(num,-dig)
    qstr = paste0("Round ",signif(num,8)," to the nearest ",pvn[dig+4],".")
    q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
    write(q,file=fn,append=TRUE)
}



