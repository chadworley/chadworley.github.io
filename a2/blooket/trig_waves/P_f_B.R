# Give P, f, or B
# Ask for P, f, or B

dat = ""

Bposs = c(paste0(2:9),
          "4I","6I","8I","10I","12I","14I","16I","18I",
          "I","F2I#3#","FI#2#","F2I#5#","FI#3#","F2I#7#","FI#4#","F2I#9#",
          "F1#2#","F1#3","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#")
fposs = c("F1#I#","F3#2I#","F2#I#","F5#2I#","F3#I#","F7#2I#","F4#I#","F9#2I#",
          paste0(2:9),
          "F1#2#","F1#3#","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#",
          "F1#4I#","F1#6I#","F1#8I#","F1#10I#","F1#12I#","F1#14I#","F1#16I#","F1#18I#")
Pposs = c("I","F2I#3#","FI#2#","F2I#5#","FI#3#","F2I#7#","FI#4#","F2I#9#",
          "F1#2#","F1#3#","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#",
          paste0(2:9),
          "4I","6I","8I","10I","12I","14I","16I","18I")
Binv = c("F1#2#","F1#3","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#",
         "F1#4I#","F1#6I#","F1#8I#","F1#10I#","F1#12I#","F1#14I#","F1#16I#","F1#18I#",
         "F1#I#","F3#2I#","F2#I#","F5#2I#","F3#I#","F7#2I#","F4#I#","F9#2I#",
         paste0(2:9))

# int(B)      f=B/(2*pi)  P=(2*pi)/B
# B=2*pi*f    int(f)      P=1/f. 
# B=(2*pi)/P  f=1/P       int(P)

for(jj in 1:300){
    qt = sample(1:6,1)
    if(qt==1){
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==f)
        eq = paste0("P=",P,collapse="")
        ch = paste0("f=",ch)
        qu = paste0("The period is given. What is the frequency?")
    }
    if(qt==2){
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==B)
        eq = paste0("P=",P,collapse="")
        ch = paste0("B=",ch)
        qu = paste0("The period is given. What is the angular frequency?")
    }
    if(qt==3){
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==P)
        eq = paste0("f=",f,collapse="")
        ch = paste0("P=",ch)
        qu = paste0("The frequency is given. What is the period?")
    }
    if(qt==4){
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==B)
        eq = paste0("f=",f,collapse="")
        ch = paste0("B=",ch)
        qu = paste0("The frequency is given. What is the angular frequency?")
    }
    if(qt==5){
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==P)
        eq = paste0("B=",B,collapse="")
        ch = paste0("P=",ch)
        qu = paste0("The angular frequency is given. What is the period?")
    }
    if(qt==6){
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==f)
        eq = paste0("B=",B,collapse="")
        ch = paste0("f=",ch)
        qu = paste0("The angular frequency is given. What is the frequency?")
    }
    lin = paste0(c(eq,qu,ch[1],ch[2],ch[3],ch[4],ca),collapse="&")
    dat = paste0(dat,lin,"\n",collapse="")
}

fileConn<-file("p5/data.txt")
writeLines(dat, fileConn)
close(fileConn)

