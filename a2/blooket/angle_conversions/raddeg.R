s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

fnam = "raddeg.csv"

write(s,file=fnam)

deg_opts = c(0,30,45,60,90,120,135,150,180,210,225,240,270,300,315,330,360)
dos = paste0(deg_opts,"°")

rad_opts = c("0","π/6","π/4","π/3","π/2","2π/3","3π/4","5π/6",
             "π","7π/6","5π/4","4π/3","3π/2","5π/3","7π/4","11π/6","2π")

for(i in 1:500){
    picks = sample(1:length(dos),4)
    qstr = paste0("Convert ",rad_opts[picks[1]]," to degrees.")
    ca = dos[picks[1]]
    was = dos[picks[2:4]]
    ch = sample(c(ca,was))
    sol = which(ch==ca)
    ans1 = ch[1]
    ans2 = ch[2]
    ans3 = ch[3]
    ans4 = ch[4]
    q = paste0(i,',"',qstr,'",',ans1,",",ans2,",",ans3,",",ans4,",20,",sol,",,",collapse="")
    write(q,file=fnam,append=TRUE)
    
    picks = sample(1:length(dos),4)
    qstr = paste0("Convert ",dos[picks[1]]," to radians.")
    ca = rad_opts[picks[1]]
    was = rad_opts[picks[2:4]]
    ch = sample(c(ca,was))
    sol = which(ch==ca)
    ans1 = ch[1]
    ans2 = ch[2]
    ans3 = ch[3]
    ans4 = ch[4]
    q = paste0(i,',"',qstr,'",',ans1,",",ans2,",",ans3,",",ans4,",20,",sol,",,",collapse="")
    write(q,file=fnam,append=TRUE)
}


