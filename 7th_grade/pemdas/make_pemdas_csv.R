s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

write(s,file="pemdas.csv")

fixer = function(ex){
  ex = gsub("")
}

foo = function(a,b,c,i){
    if(i==1){return(a+b/c)}
    if(i==2){return(a-b/c)}
    if(i==3){return(a+b*c)}
    if(i==4){return(a-b*c)}
    if(i==5){return((a+b)*c)}
    if(i==6){return((a-b)*c)}
    if(i==7){return((a+b)/c)}
    if(i==8){return((a-b)/c)}
    if(i==9){return(a*b+c)}
    if(i==10){return(a*b-c)}
    if(i==11){return(a/b+c)}
    if(i==12){return(a/b-c)}
    if(i==13){return(a*(b+c))}
    if(i==14){return(a*(b-c))}
    if(i==15){return(a/(b+c))}
    if(i==16){return(a/(b-c))}
}


for(i in 1:1000){
    myt = sample(1:16,1)
    forms = c("a+b/c",
              "a-b/c",
              "a+b*c",
              "a-b*c",
              "(a+b)*c",
              "(a-b)*c",
              "(a+b)/c",
              "(a-b)/c",
              "a*b+c",
              "a*b-c",
              "a/b+c",
              "a/b-c",
              "a*(b+c)",
              "a*(b-c)",
              "a/(b+c)",
              "a/(b-c)")
    while(T){
        abc = sample(2:20,3)
        a = abc[1]
        b = abc[2]
        c = abc[3]
        d = foo(a,b,c,myt)
        if(d>0 && round(d)==d && d<20){break}
    }
    ex = forms[myt]
    ex = gsub("a",a,ex,fixed=T)
    ex = gsub("b",b,ex,fixed=T)
    ex = gsub("c",c,ex,fixed=T)
    q = paste0(i,',"',ex,'",',d,",,,,12,,,typing",collapse="")
    write(q,file="pemdas.csv",append=TRUE)
}


