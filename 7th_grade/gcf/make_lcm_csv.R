s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fname = "lcm.csv"

write(s,file=fname)

fixer = function(ex){
  ex = gsub("")
}

gcd2 <- function(a, b) {
    if (b == 0) a else Recall(b, a %% b)
}
gcd <- function(...) Reduce(gcd2, c(...))

primes = c(2,3,5,7,11,13)
for(i in 1:1000){
    while(T){
        thegcd = sample(2:12,1)
        pp = sample(primes,2)
        a = thegcd*pp[1]
        b = thegcd*pp[2]
        M = thegcd*pp[1]*pp[2]
        if(M>10 && M<100){break}
    }
    
    qstr = paste0("What is the Least Common Multiple of ",a," and ",b,"?")
    ans = M
    q = paste0(i,',"',qstr,'",',ans,",,,,30,,,typing",collapse="")
    write(q,file=fname,append=TRUE)
}


