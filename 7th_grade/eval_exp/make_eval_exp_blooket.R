s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

write(s,file="eval_exp_blooket_pos.csv")

for(i in 1:1000){
    qtype = sample(1:4,1)
    if(qtype==1 || qtype==2){ #addition
        ab = sample(2:13,2)
        a = ab[1]
        b = ab[2]
        c = a+b
    } else {
        ab = sample(2:10,2,T)
        a = ab[1]
        b = ab[2]
        c = a*b
    }
    if(qtype==1){
        # qstr = paste0(a,"+",b,collapse="")
        qstr = paste0("Evaluate the expression\n\nx+y\n\nwith the given values:\n\nx=",a,"\n\ny=",b)
        ans = c
    } else if(qtype==2){
        # qstr = paste0(c,"-",a,collapse="")
        qstr = paste0("Evaluate the expression\n\nx-y\n\nwith the given values:\n\nx=",c,"\n\ny=",a)
        ans = b
    } else if(qtype==3){
        # qstr = paste0(a,"*",b,collapse="")
        qstr = paste0("Evaluate the expression\n\nx*y\n\nwith the given values:\n\nx=",a,"\n\ny=",b)
        ans = c
    } else if(qtype==4){
        # qstr = paste0(c,"/",a,collapse="")
        qstr = paste0("Evaluate the expression\n\nx/y\n\nwith the given values:\n\nx=",c,"\n\ny=",a)
        ans = b
    }
    q = paste0(i,',"',qstr,'",',ans,",,,,12,,,typing",collapse="")
    write(q,file="eval_exp_blooket_pos.csv",append=TRUE)
}


