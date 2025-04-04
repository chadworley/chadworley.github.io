s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fn = "times_10pow.csv"

write(s,file=fn)

fixer = function(ex){
    ex = gsub("")
}


for(i in 1:1000){
    mantissa = signif(sample(100:999,1)/100,3)
    pexp = sample(-2:3,1)
    factor1 = signif(mantissa*10^pexp,3)
    qt = sample(1:2,1)
    if(qt==1){
        factor2 = sample(c(10,100),1)
        factors = sample(c(factor1,factor2))
        qstr = paste0("Evaluate the product  ",factors[1]," × ",factors[2])
        ans = prod(factors)
    } else {
        qqt = sample(1:2,1)
        if(qqt==1){
            factor2 = sample(c(10,100),1)
            qstr = paste0("Evaluate the quotient  ",factor1," ÷ ",factor2)
            ans = factor1/factor2
        } else {
            factor2 = sample(c(0.1,0.01),1)
            factors = sample(c(factor1,factor2))
            qstr = paste0("Evaluate the product  ",factors[1]," × ",factors[2])
            ans = prod(factors)
        }
    }
    q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
    write(q,file=fn,append=TRUE)
}



