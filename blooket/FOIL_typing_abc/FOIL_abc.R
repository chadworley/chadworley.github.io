s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "FOIL_abc.csv"

write(s,file=fnam)

pfix = function(c,d){
    cc = c[c!=0]
    dd = d[c!=0]
    p = paste0("{",cc,"}x^{",dd,"}",collapse="+")
    p = gsub("x^{0}","",p,fixed=T)
    p = gsub("x^{1}","x",p,fixed=T)
    p = gsub("+{-","-{",p,fixed=T)
    p = gsub("+{1}x","+x",p,fixed=T)
    p = gsub("-{1}x","-x",p,fixed=T)
    p = gsub("{-1}x","-x",p,fixed=T)
    p = gsub("{1}x","x",p,fixed=T)
    p = gsub("{","",p,fixed=T)
    p = gsub("}","",p,fixed=T)
    return(p)
}


for(i in 1:1000){
    aborc = sample(1:3,1)
    while(T){
        ab = sample(1:9,4,T)*sample(c(-1,1),4,T)
        a = ab[1]
        b = ab[2]
        c = ab[3]
        d = ab[4]
        if(abs(a*d+b*c)>1 && abs(a*c)>1 && abs(b*d)>1){break}
    }
    if(length(unique(sign(c(a,b,c,d))))==1){
        a = abs(a)
        b = abs(b)
        c = abs(c)
        d = abs(d)
    }
    B = a*d+b*c
    A = a*c
    C = b*d
    qstr = paste0("Expand into standard form:\n\n(",pfix(c(a,b),1:0),")(",pfix(c(c,d),1:0),")\n\nFind coefficient ",c("a","b","c")[aborc],".",collapse="")
    # ans = paste0(pfix(c(a*c,a*d+b*c,b*d),2:0),collapse="")
    ans = c(A,B,C)[aborc]
    q = paste0(i,',"',qstr,'",',ans,",,,,60,,,typing",collapse="")
    write(q,file=fnam,append=TRUE)
}


