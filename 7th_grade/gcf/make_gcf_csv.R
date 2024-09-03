s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fname = "gcf.csv"

write(s,file=fname)

fixer = function(ex){
  ex = gsub("")
}

gcd2 <- function(a, b) {
    if (b == 0) a else Recall(b, a %% b)
}
gcd <- function(...) Reduce(gcd2, c(...))

primes = c(2,3,5,7,11,13)
fullprimes = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
for(i in 1:1000){
    thegcd = sample(1:12,1)
    while(T){
        ab = sample(10:99,2)
        a = ab[1]
        b = ab[2]
        G = gcd(a,b)
        if(G==thegcd){break}
    }
    qstr = paste0("What is the Greatest Common Factor of ",a," and ",b,"?")
    ans = thegcd
    q = paste0(i,',"',qstr,'",',ans,",,,,30,,,typing",collapse="")
    write(q,file=fname,append=TRUE)
}


