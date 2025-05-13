s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "scale_factor.csv"
write(s,file=fnam)

for(j in 1:1000){
    qty = sample(1:2,1)
    i = 50+sample(1:49,1)*sample(c(-1,1),1)
    if(qty==1){
        qstr = paste0("Select the growth factor that will model a decrease of ",i,"%")
        cc1 = paste0(round(1-i/100,2))
        cc2 = paste0("1 - ",round(i/100,2))
        ic1 = round(i/100,2)
        ic2 = paste0("1 - ",round(1-i/100,2))
        ic3 = paste0("1 + ",round(1-i/100,2))
        ic4 = paste0("1 + ",round(i/100,2))
        ic5 = paste0(round(1+i/100,2))
        ic6 = paste0(round(1+1-i/100,2))
        cc = sample(c(cc1,cc2),1)
        ic = sample(c(ic1,ic2,ic3,ic4,ic5,ic6),3)
    } else {
        qstr = paste0("Select the growth factor that will model an increase of ",i,"%")
        cc1 = paste0(round(1+i/100,2))
        cc2 = paste0("1 + ",round(i/100,2))
        ic1 = round(i/100,2)
        ic2 = paste0("1 - ",round(1-i/100,2))
        ic3 = paste0("1 + ",round(1-i/100,2))
        ic4 = paste0("1 - ",round(i/100,2))
        ic5 = paste0(round(1-i/100,2))
        ic6 = paste0(round(1+1-i/100,2))
        cc = sample(c(cc1,cc2),1)
        ic = sample(c(ic1,ic2,ic3,ic4,ic5,ic6),3)
    }
    pfs = c(cc,ic)
    ord = sample(1:4)
    psh = pfs[ord]
    ans = which(ord==1)
    q = paste0(j,',"',qstr,'",',psh[1],",",psh[2],",",psh[3],",",psh[4],",12,",ans,",,",collapse="")
    write(q,file=fnam,append=TRUE)
}


