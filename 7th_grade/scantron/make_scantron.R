nq = 33
nc = 4
labs = c("A","B","C","D")

pdf(paste0("bubbles_",nq,".pdf",collapse=""),8.5,11)

par(mar=c(3,3,3,3))
plot(0,0,"n",xlim=c(0,1),ylim=c(0,nq+1),axes=F,ann=F)

th = seq(0,2*pi,pi/100)
for(i in 1:nq){
    text(0.1,nq-i+0.5,i)
    for(j in 1:nc){
        lines(0.1+j*(0.2/nc)+0.8/nc/10*cos(th),nq-i+0.5+0.4*sin(th))
    }
}

for(j in 1:nc){
    text(0.1+j*(0.2/nc),nq+0.5,labs[j])
}

text(0.7,nq,"NAME:__________________")



dev.off()