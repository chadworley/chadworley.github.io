s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "sub_to_add.csv"

write(s,file=fnam)

fixer = function(ex){
  ex = gsub("")
}


cnt = 0
for(i in c(-9:-1,1:9)){
    for(j in c(-9:-1,1:9)){
        cnt = cnt+1
        if(j<0){
            qstr = paste0("Rewrite using addition: ",i," - (",j,")",collapse="")
            ans1 = paste0(i,"+",-j)
            ans2 = paste0(i," + ",-j)
            q = paste0(cnt,',"',qstr,'",',ans1,",",ans2,",,,12,,,typing",collapse="")
        } else {
            qstr = paste0("Rewrite using addition: ",i," - ",j,collapse="")
            ans1 = paste0(i,"+",-j)
            ans2 = paste0(i," + ",-j)
            ans3 = paste0(i,"+(",-j,")")
            ans4 = paste0(i," + (",-j,")")
            q = paste0(cnt,',"',qstr,'",',ans1,",",ans2,",",ans3,",",ans4,",12,,,typing",collapse="")
        }
        write(q,file=fnam,append=TRUE)
    }
}


