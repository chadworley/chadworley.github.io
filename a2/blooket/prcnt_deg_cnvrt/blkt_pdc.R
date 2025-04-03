s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "prcnt_deg_cnvrt.csv"

write(s,file=fnam)
options(scipen = 99)


for(i in 1:1000){
    mantissa = signif(runif(1,1,9.99),3)
    pexp = sample(-1:2,1)
    percentage = mantissa*10^pexp
    fraction = mantissa*10^(pexp-2)
    badfrac = mantissa*10^(pexp+2)
    badper = mantissa*10^(pexp-4)
    qtype = sample(1:2,1)
    if(qtype==1){
        qstr = paste0("Convert ",percentage,"% to a decimal fraction.")
        while(T){
            ii = sort(sample(-3:2,4))
            ach = mantissa*10^ii
            if(fraction %in% ach){break}
        }
        sol = which(ach==fraction)
    }
    else{
        qstr = paste0("Convert ",fraction," to a percentage.")
        while(T){
            ii = sort(sample(-3:2,4))
            ach = mantissa*10^ii
            if(percentage %in% ach){break}
        }
        sol = which(ach==percentage)
        ach = paste0(ach,"%")
    }
    
    # qstr = paste0("Convert ",dos[picks[1]]," to radians.")
    # ca = rad_opts[picks[1]]
    # was = rad_opts[picks[2:4]]
    # ch = sample(c(ca,was))
    # sol = which(ch==ca)
    ans1 = ach[1]
    ans2 = ach[2]
    ans3 = ach[3]
    ans4 = ach[4]
    q = paste0(i,',"',qstr,'",',ans1,",",ans2,",",ans3,",",ans4,",60,",sol,",,",collapse="")
    write(q,file=fnam,append=TRUE)
}


