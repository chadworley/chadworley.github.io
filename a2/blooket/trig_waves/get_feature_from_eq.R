# Give equation of sin or cos
# Ask for A, B, P, f, D, or t=0 behavior

dat = ""

# mkeq = function(A,P,D,cs){
#     if(cs=="cos"){
#         st = paste0("y=",A,"C(FP#",round(P/2),"#t)+",D)
#     } else {
#         st = paste0("y=",A,"S(FP#",round(P/2),"#t)+",D)
#     }
#     st = gsub("+-","-",st,fixed=T)
#     return(st)
# }

mkeq = function(A,B,D,g){
    if(g=="cos"){
        st = paste0("y=",A,"C(",B,"t)+",D)
    } else {
        st = paste0("y=",A,"S(",B,"t)+",D)
    }
    st = gsub("+-","-",st,fixed=T)
    return(st)
}

Aposs = c(-9:-2,2:9)
Dposs = c(-9:-2,2:9)
gposs = c("sin","cos")
Bposs = c(paste0(2:9),
          "4P","6P","8P","10P","12P","14P","16P","18P",
          "P","F2P#3#","FP#2#","F2P#5#","FP#3#","F2P#7#","FP#4#","F2P#9#",
          "F1#2#","F1#3","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#")
fposs = c("F1#P#","F3#2P#","F2#P#","F5#2P#","F3#P#","F7#2P#","F4#P#","F9#2P#",
          paste0(2:9),
          "F1#2#","F1#3#","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#",
          "F1#4P#","F1#6P#","F1#8P#","F1#10P#","F1#12P#","F1#14P#","F1#16P#","F1#18P#")
Pposs = c("P","F2P#3#","FP#2#","F2P#5#","FP#3#","F2P#7#","FP#4#","F2P#9#",
          "F1#2#","F1#3#","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#",
          paste0(2:9),
          "4P","6P","8P","10P","12P","14P","16P","18P")
Binv = c("F1#2#","F1#3","F1#4#","F1#5#","F1#6#","F1#7#","F1#8#","F1#9#",
         "F1#4P#","F1#6P#","F1#8P#","F1#10P#","F1#12P#","F1#14P#","F1#16P#","F1#18P#",
         "F1#P#","F3#2P#","F2#P#","F5#2P#","F3#P#","F7#2P#","F4#P#","F9#2P#",
         paste0(2:9))

# int(B)      f=B/(2*pi)  P=(2*pi)/B
# B=2*pi*f    int(f)      P=1/f. 
# B=(2*pi)/P  f=1/P       int(P)

for(jj in 1:300){
    qt = sample(1:6,1)
    if(qt==1){
        A = sample(unique(abs(Aposs)),2)*sample(c(-1,1),2)
        B = sample(Bposs,1)
        D = sample(Dposs,1)
        g = sample(gposs,1)
        eq = mkeq(A[1],B,A[2],g)
        ch = sort(c(-A[1],-A[2],A[1],A[2]))
        ca = which(ch==abs(A[1]))
        qu = "What is the amplitude?"
    }
    if(qt==2){
        A = sample(Aposs,1)
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        D = sample(Dposs,1)
        g = sample(gposs,1)
        eq = mkeq(A,B,D,g)
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==B)
        qu = "What is the angular frequency?"
    }
    if(qt==3){
        A = sample(Aposs,1)
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        D = sample(Dposs,1)
        g = sample(gposs,1)
        eq = mkeq(A,B,D,g)
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==f)
        qu = "What is the frequency?"
    }
    if(qt==4){
        A = sample(Aposs,1)
        i = sample(1:length(Bposs),1)
        B = Bposs[i]
        f = fposs[i]
        P = Pposs[i]
        Bi = Binv[i]
        D = sample(Dposs,1)
        g = sample(gposs,1)
        eq = mkeq(A,B,D,g)
        ch = sample(c(B,f,P,Bi))
        ca = which(ch==P)
        qu = "What is the period?"
    }
    if(qt==5){
        A = sample(Aposs,1)
        B = sample(Bposs,1)
        D = sample(unique(abs(Dposs)),2)*sample(c(-1,1),2)
        g = sample(gposs,1)
        eq = mkeq(D[2],B,D[1],g)
        ch = sort(c(D[1],D[2],-D[1],-D[2]))
        ca = which(ch==D[1])
        qu = "What is the offset?"
    }
    if(qt==6){
        A = sample(Aposs,1)
        B = sample(Bposs,1)
        D = sample(Dposs,1)
        g = sample(gposs,1)
        eq = mkeq(A,B,D,g)
        ch = c("maximum.",
               "minimum.",
               "midline and increasing.",
               "midline and decreasing."
        )
        if(g=="cos" && A>0){
            ca = 1
        }
        if(g=="cos" && A<0){
            ca = 2
        }
        if(g=="sin" && A>0){
            ca = 3
        }
        if(g=="sin" && A<0){
            ca = 4
        }
        qu = "At t=0 the wave is at..."
    }
    lin = paste0(c(eq,qu,ch[1],ch[2],ch[3],ch[4],ca),collapse="&")
    dat = paste0(dat,lin,"\n",collapse="")
}

fileConn<-file("p4/data.txt")
writeLines(dat, fileConn)
close(fileConn)

