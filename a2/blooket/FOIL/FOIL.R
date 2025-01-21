s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "FOIL.csv"

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

pfixsp = function(c,d){
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
    p = gsub("+"," + ",p,fixed=T)
    p = gsub("-"," - ",p,fixed=T)
    return(p)
}


for(i in 1:1000){
  ab = sample(1:12,2,T)*sample(c(-1,1),2,T)
  a = ab[1]
  b = ab[2]
  qstr = paste0("Expand (FOIL) the expression:\n\n(",pfix(c(1,a),1:0),")(",pfix(c(1,b),1:0),")",collapse="")
  ca = pfixsp(c(1,a+b,a*b),2:0)
  wa1 = pfixsp(c(1,a-b,a*b),2:0)
  wa2 = pfixsp(c(1,b-a,a*b),2:0)
  wa3 = pfixsp(c(1,-b-a,a*b),2:0)
  wa4 = pfixsp(c(1,a+b,-a*b),2:0)
  wa5 = pfixsp(c(1,a-b,-a*b),2:0)
  wa6 = pfixsp(c(1,b-a,-a*b),2:0)
  wa7 = pfixsp(c(1,-b-a,-a*b),2:0)
  wa8 = pfixsp(c(1,a*b,a+b),2:0)
  wa9 = pfixsp(c(1,-a*b,a+b),2:0)
  wa10 = pfixsp(c(1,-a*b,-a-b),2:0)
  wa11 = pfixsp(c(1,a*b,-a-b),2:0)
  wa12 = pfixsp(c(1,0,a*b),2:0)
  wa13 = pfixsp(c(1,0,-a*b),2:0)
  wa14 = pfixsp(c(1,a+b,a*(b+1)),2:0)
  wa15 = pfixsp(c(1,a+b,(a+1)*b),2:0)
  wa16 = pfixsp(c(1,a+b,a*(b-1)),2:0)
  wa17 = pfixsp(c(1,a+b,(a-1)*b),2:0)
  wa18 = pfixsp(c(1,a+b+1,a*b),2:0)
  wa19 = pfixsp(c(1,a+b-1,a*b),2:0)
  wa20 = pfixsp(c(1,a+b+2,a*b),2:0)
  wa21 = pfixsp(c(1,a+b-2,a*b),2:0)
  was = unique(c(wa1,wa2,wa3,wa4,wa5,wa6,wa7,wa8,wa9,wa10,wa11,wa12,wa13,wa14,
                 wa15,wa16,wa17,wa18,wa19,wa20,wa21))
  was = was[was!=ca]
  was = sample(was,3)
  ch = sample(c(ca,was))
  sol = which(ch==ca)
  ans1 = ch[1]
  ans2 = ch[2]
  ans3 = ch[3]
  ans4 = ch[4]
  q = paste0(i,',"',qstr,'",',ans1,",",ans2,",",ans3,",",ans4,",60,",sol,",,",collapse="")
  write(q,file=fnam,append=TRUE)
}


