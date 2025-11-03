library(latex2exp)
# library(tinytex)

set.seed(123)

pchgood = c(0,1,3,4,5,7,8,9,10,11,12,13,15,16,18,19,20)


getbasedots = function(fg=1,n=4){
    if(fg<6){
        x = runif(2*n)
        y = runif(2*n)-0.5
        h = runif(2*n)
        p = sample(c(0,1,3,4,5,7,8,9,10,11,12,13,15,16,18,19,20),2*n,T)
    } else {
        x = runif(n)
        y = runif(n)-0.5
        h = runif(n)
        p = sample(c(0,1,3,4,5,7,8,9,10,11,12,13,15,16,18,19,20),n,T)
        x = as.vector(rbind(c(x),c(x)))
        y = as.vector(rbind(c(y),c(-y)))
        h = as.vector(rbind(c(h),c(h)))
        p = as.vector(rbind(c(p),c(p)))
    }
    dots = data.frame(x,y,h,p)
    return(dots)
}

translate = function(dots,dx=1){
    tdots = data.frame(dots)
    tdots$x = dots$x+dx
    return(tdots)
}
rotate = function(dots,xr){
    tdots = data.frame(dots)
    tdots$x = tdots$x-xr
    tdots$x = -tdots$x+xr
    tdots$y = -tdots$y
    return(tdots)
}
glide = function(dots,dx){
    tdots = data.frame(dots)
    tdots$x = tdots$x+dx
    tdots$y = -tdots$y
    return(tdots)
}
mirror = function(dots,xr){
    tdots = data.frame(dots)
    tdots$x = tdots$x-xr
    tdots$x = -tdots$x+xr
    return(tdots)
}

drawdots = function(dots,fg,val=1,cex=1,lwd=1){
    xs = list(dots$x)
    ys = list(dots$y)
    # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
    if(fg==1){
        for(i in 1:7){
            dots = translate(dots,1)
            xs[[i+1]] = dots$x
            ys[[i+1]] = dots$y
            # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
        }
    }
    if(fg==2){
        for(i in 1:7){
            dots = glide(dots,1)
            xs[[i+1]] = dots$x
            ys[[i+1]] = dots$y
            # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
        }
    }
    if(fg==3){
        for(i in 1:7){
            dots = mirror(dots,i)
            xs[[i+1]] = dots$x
            ys[[i+1]] = dots$y
            # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
        }
    }
    if(fg==4){
        for(i in 1:7){
            dots = rotate(dots,i)
            xs[[i+1]] = dots$x
            ys[[i+1]] = dots$y
            # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
        }
    }
    if(fg==5){
        for(i in 1:7){
            if(i%%2==1){
                dots = mirror(dots,i)
            } else {
                dots = rotate(dots,i)
            }
            xs[[i+1]] = dots$x
            ys[[i+1]] = dots$y
            # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
        }
    }
    if(fg==6){
        for(i in 1:7){
            dots = translate(dots,1)
            xs[[i+1]] = dots$x
            ys[[i+1]] = dots$y
            # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
        }
    }
    if(fg==7){
        for(i in 1:7){
            dots = mirror(dots,i)
            xs[[i+1]] = dots$x
            ys[[i+1]] = dots$y
            # points(dots$x,dots$y,col=hsv(dots$h,1,val),pch=dots$p,cex=cex,lwd=lwd)
        }
    }
    xxx = as.vector(rbind(xs[[1]],xs[[2]],xs[[3]],xs[[4]],xs[[5]],xs[[6]],xs[[7]],xs[[8]]))
    yyy = as.vector(rbind(ys[[1]],ys[[2]],ys[[3]],ys[[4]],ys[[5]],ys[[6]],ys[[7]],ys[[8]]))
    points(xxx,yyy,col=rep(hsv(dots$h,1,val),each=8),pch=rep(dots$p,each=8),cex=cex,lwd=lwd)
    }


sols = character()

# lwd = 7
# n = 300

w1 = c("p1","p11g","p1m1","p2","p2mg","p11m","p2mm")
w2 = c("hop","step","sidle","spinning hop","spinning sidle","jump","spinning jump")


for(i in 1:1000){
    fgs = sample(1:7,4)
    fg1 = fgs[1]
    fg2 = sample(fgs)
    wo = which(fg2==fgs[1])
    png(paste0("p1/q",sprintf("%03d",i),".png"),500,300)
    par(mar=c(3,0,3,0),oma=c(0,0,0,0))
    dots = getbasedots(fg1,6)
    plot(0,0,type="n",xlim=c(2.2,7.8),ylim=c(-0.7,0.7),axes=F,ann=F)
    drawdots(dots,fg1,0.7,5,5)
    # polygon(c(-.1,-.1,6.1,6.1),c(-0.6,0.6,0.6,-0.6))
    dev.off()
    solst = paste0(paste0(w1[fg2]," (",w2[fg2],")",collapse="#"),"#",wo)
    sols = c(sols,solst)
}

fileConn<-file("p1_sols.txt")
writeLines(sols, fileConn)
close(fileConn)


# fileConn<-file("v2_1/vars.txt")
# writeLines(vars, fileConn)
# close(fileConn)
