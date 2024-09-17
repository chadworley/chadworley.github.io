pdf("chess_board_legal.pdf",11,17)

par(mar=c(0,0,0,0),pty="s")
plot(0,0,"n",ann=F,axes=F,xlim=c(-0.2,8.2),ylim=c(-0.4,8.4))

for(i in 1:8){
    for(j in 1:8){
        if((i+j)%%2==0){
            polygon(c(i-1,i,i,i-1),c(j-1,j-1,j,j),col="black")
        }
    }
}
polygon(c(0,0,8,8),c(0,8,8,0))

for(i in 1:8){
    text(i-0.5,-0.1,LETTERS[i])
    text(i-0.5,8.1,LETTERS[i],srt=180)
    text(8.1,i-0.5,i,srt=90)
    text(-0.1,i-0.5,i,srt=90*3)
}
text(4,-0.3,"white")
text(4,8.3,"black",srt=180)

dev.off()



