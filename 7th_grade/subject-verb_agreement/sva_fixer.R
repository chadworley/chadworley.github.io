s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3 
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'

x = read.csv("sva.csv")

for(i in 1:27){
    qn = i
    q = trimws(noquote(x[i,1]))
    o1 = trimws(noquote(x[i,2]))
    o2 = trimws(noquote(x[i,3]))
    o3 = "" #trimws(noquote(x[i,5]))
    o4 = "" #trimws(noquote(x[i,6]))
    opts = c(o1,o2,o3,o4)
    ca = 1 #trimws(noquote(x[i,2]))
    ca = as.numeric(ca)
    ord = sample(1:2)
    nopts = opts[ord]
    nca = which(ord==ca)
    s = paste0(s,"\n",qn,',"',q,'","',nopts[1],'","',nopts[2],'",,,30,',nca,",,",collapse="")
}

fileConn<-file("svaf.csv")
writeLines(s, fileConn)
close(fileConn)

