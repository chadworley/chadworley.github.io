s = '"Blooket Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3 (Optional)","Answer 4 (Optional)","Time Limit (sec) (Max: 300 seconds)","Correct Answer(s) (Only include Answer #)",,'

fname = "wfpp.csv"

cols = c("red","orange","yellow","green","blue","violet","black","white")

primes = c(2,3,5,7,11,13)
fullprimes = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
for(i in 1:1000){
    prct = sample(c(10,20,25,30,40,50,60,70,75),1)
    col = sample(cols,1)
    while(T){
        tot = sample(20:99,1)
        part = prct/100*tot
        if(part%%1==0){break}
    }
    qstr = paste0("In a bag of marbles, ",prct,"% are ", col,". You know there are ",part," ",col," marbles. How many total marbles are in the bag?")
    ans = tot
    q = paste0(i,',"',qstr,'",',ans,",,,,60,,,typing",collapse="")
    s=paste0(s,"\n",q,collapse="")
}

write(s,file=fname)