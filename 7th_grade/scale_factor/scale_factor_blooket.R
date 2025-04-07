s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fn = "scale_factor.csv"

write(s,file=fn)

# percent of, 
# less, fewer, under, off, decrease
# more, over, increase

for(i in 1:1000){
    qt=sample(1:3,1)
    gmant = sample(11:99,1)/10
    gexp = sample(0:1,1)
    g = signif(gmant*10^gexp,2)
    qs1 = "What scale factor corresponds to the phrase '"
    if(qt==1){
        qstr = paste0(qs1,g,"% of","'?")
        ans = g/100
    }
    if(qt==2){
        wrds = c("less","fewer","under","off","decrease")
        wrd = sample(wrds,1)
        qstr = paste0(qs1,g,"% ",wrd,"'?")
        ans = 1-g/100
    }
    
    if(qt==3){
        wrds = c("more","over","increase")
        wrd = sample(wrds,1)
        qstr = paste0(qs1,g,"% ",wrd,"'?")
        ans = 1+g/100
    }
    q = paste0(i,",",qstr,",",ans,",,,,12,,,typing",collapse="")
    write(q,file=fn,append=TRUE)
}



