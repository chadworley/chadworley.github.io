

initial_angle = 0   #In degrees, 0 is East, 90 is North (up)
line_color = "black" #You can also use "blue" or rgb(1,0.2,0.9) or hsv(1,0.5,1)
line_width = 1
bg_color = "white"
PNG_pixel_width = 300

# BELOW HERE IS CODE... PROBABLY DO NOT EDIT THIS CODE...
getstr = function(start,rules,n){
    st = start
    for(jj in 1:n){
        st2 = ""
        for(i in 1:nchar(st)){
            ch = substr(st,i,i)
            if(!is.null(rules[[ch]])){
                st2 = paste0(st2,rules[[ch]],collapse="")
            } else {
                st2 = paste0(st2,ch,collapse="")
            }
        }
        st = st2
    }
    return(st)
}
getxyc = function(string="AA+AA+AA+A+A",angle=pi/2,angle_initial=pi/2,col="blue"){
    switch = 1
    d = angle_initial
    x = 0
    y = 0
    xl = c(x)
    yl = c(y)
    cols = numeric()
    dsave = numeric()
    xsave = numeric()
    ysave = numeric()
    for(i in 1:nchar(string)){
        ch = substr(string,i,i)
        cn = as.integer(charToRaw(ch))
        if(cn>=as.integer(charToRaw("A")) && cn<=as.integer(charToRaw("L"))){
            cols = c(cols,col)
            x = x+cos(d)
            y = y+sin(d)
            xl = c(xl,x)
            yl = c(yl,y)
        }
        if(cn>=as.integer(charToRaw("M")) && cn<=as.integer(charToRaw("Z"))){
            cols = c(cols,"NA")
            x = x+cos(d)
            y = y+sin(d)
            xl = c(xl,x)
            yl = c(yl,y)
        }
        if(cn==as.integer(charToRaw("["))){
            dsave = c(dsave,d)
            xsave = c(xsave,x)
            ysave = c(ysave,y)
        }
        if(cn==as.integer(charToRaw("]"))){
            cols = c(cols,"NA")
            x = xsave[length(xsave)]
            y = ysave[length(ysave)]
            d = dsave[length(dsave)]
            if(length(xsave)>1){
                xsave = xsave[1:(length(xsave)-1)]
                ysave = ysave[1:(length(ysave)-1)]
                dsave = dsave[1:(length(dsave)-1)]
            } else {
                xsave = numeric()
                ysave = numeric()
                dsave = numeric()
            }
            xl = c(xl,x)
            yl = c(yl,y)
        }
        if(cn==as.integer(charToRaw("-"))){
            d = d-angle*switch
        }
        if(cn==as.integer(charToRaw("+"))){
            d = d+angle*switch
        }
        if(cn==as.integer(charToRaw("."))){
            switch = switch*(-1)
        }
    }
    xwid = max(xl)-min(xl)
    ywid = max(yl)-min(yl)
    xmid = (max(xl)+min(xl))/2
    ymid = (max(yl)+min(yl))/2
    wid = max(c(xwid,ywid))
    x2 = (xl-xmid)/wid*2
    y2 = (yl-ymid)/wid*2
    return(list(x2,y2,cols))
}
makeplot = function(xyc,lwd=1){
    x = xyc[[1]]
    y = xyc[[2]]
    c = xyc[[3]]
    plot(0,0,"n",xlim=c(-1,1),ylim=c(-1,1),axes=F,ann=F)
    for(i in 2:length(x)){
        lines(c(x[i-1],x[i]),c(y[i-1],y[i]),col=c[i-1],lwd=lwd)
    }
}

showrules = function(g){
    rules = g[[2]]
    pr = paste0(names(rules)," > ",rules,collapse="\n")
    return(pr)
}

g99 = list("C",
           list("A"="F[---BC][+++BC]",
                "B"="F[-CA][+CA]",
                "C"="[-AB][+AB]",
                "F"="FF"),
           6,
           15)

# png("hi.png",300,300)

par(mar=c(0,0,0,0),oma=c(0,0,0,0),pty="s")
s = getstr(g99[[1]],g99[[2]],g99[[3]])
angle = g99[[4]]
xyc = getxyc(s,angle/180*pi,angle_initial=90/180*pi,col=line_color)
makeplot(xyc,lwd=2)

# dev.off()

ss = "Start:"
ss = paste0(ss," ",g99[[1]])
ss = paste0(ss,"\nrules:\n")
ss = paste0(ss,showrules(g99))
ss = paste0(ss,"\nIterations:")
ss = paste0(ss,g99[[3]])
ss = paste0(ss,"\nAngle:")
ss = paste0(ss,g99[[4]])
cat(ss)