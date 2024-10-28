s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3 
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,\n'

p = readLines("p.txt")
n = readLines("n.txt")

for(i in 1:1000){
    p1 = sample(p,1)
    ns = sample(n,3)
    ch = sample(c(p1,ns))
    corr = (1:4)[p1==ch]
    s=paste0(s,i,',"Which sentence shows parallelism in the list?",',
             paste0('"',ch,'"',collapse=","),",30,",corr,",,\n",collapse=""
             )
}

fileConn<-file("parallel_blooket.csv")
writeLines(s, fileConn)
close(fileConn)
