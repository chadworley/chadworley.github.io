s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fname = "mean.csv"

write(s,file=fname)

fixer = function(ex){
  ex = gsub("")
}


primes = c(2,3,5,7,11,13)
for(i in 1:1000){
    while(T){
        n = sample(3:5,1)
        ones = sample(0:9,n,T)
        tens = sample(1:9,1)*10
        nums = tens+ones
        xbar = mean(nums)
        if(round(xbar)==xbar && length(unique(nums))>1){
            break
        }
    }
    listnums = paste0(nums,collapse=", ")
    qstr = paste0('Find the mean (average) of the numbers: ',listnums,collapse="")
    ans = xbar
    q = paste0(i,',"',qstr,'",',ans,",,,,30,,,typing",collapse="")
    write(q,file=fname,append=TRUE)
}


