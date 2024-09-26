s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3 
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

x = read.csv("mm.csv")


for(i in 2:72){
    qn = as.numeric(trimws(noquote(x[i,1])))
    q = trimws(noquote(x[i,2]))
    o1 = trimws(noquote(x[i,3]))
    o2 = trimws(noquote(x[i,4]))
    o3 = trimws(noquote(x[i,5]))
    o4 = trimws(noquote(x[i,6]))
    opts = c(o1,o2,o3,o4)
    ca = trimws(noquote(x[i,8]))
    ca = as.numeric(ca)
    print(ca)
    ord = sample(1:4)
    nopts = opts[ord]
    nca = which(ord==ca)
    s = paste0(s,"\n",qn,',"',q,'","',nopts[1],'","',nopts[2],'","',nopts[3],'","',nopts[4],'",30,',nca,",,",collapse="")
}

cat(s)
