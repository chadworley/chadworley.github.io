s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fname = "gcf_lcm.csv"

write(s,file=fname)

fixer = function(ex){
  ex = gsub("")
}

gcd2 <- function(a, b) {
    if (b == 0) a else Recall(b, a %% b)
}
gcd <- function(...) Reduce(gcd2, c(...))

primes = c(2,3,5,7)
for(i in 1:1000){
    morf = sample(1:2,1)
    if(morf==1)
    {
        while(T){
            thegcd = sample(2:12,1)
            pp = sample(primes,2)
            a = thegcd*pp[1]
            b = thegcd*pp[2]
            M = thegcd*pp[1]*pp[2]
            if(M>6 && M<50){break}
        } 
        qstr = paste0("What is the Least Common Multiple of ",a," and ",b,"?")
        ans = M
    }
    else{
        thegcd = sample(2:12,1)
        while(T){
            ab = sample(6:40,2)
            a = ab[1]
            b = ab[2]
            G = gcd(a,b)
            if(G==thegcd){break}
        }
        qstr = paste0("What is the Greatest Common Factor of ",a," and ",b,"?")
        ans = thegcd
    }
    q = paste0(i,',"',qstr,'",',ans,",,,,30,,,typing",collapse="")
    write(q,file=fname,append=TRUE)
}


