fnam = "sct_from_sct_q.csv"

s = '"Blooket
Import Template",,,,,,,,,
Question #,Question Text,Answer 1,Answer 2,"Answer 3
(Optional)","Answer 4
(Optional)","Time Limit (sec)
(Max: 300 seconds)","Correct Answer(s)
(Only include Answer #)",,'
write(s,file=fnam)

for(i in 1:1000){
    qt = sample(1:6,1) #question type
    q = sample(1:4,1) #quadrant
    th = runif(1,pi/20,pi/2-pi/20)+(q-1)*pi/2 #theta (angle)
    x = cos(th)
    y = sin(th)
    sx = sign(x) #This will be consistent, even with rounded given, because th is far from axis
    sy = sign(y)
    rmn = c("I","II","III","IV")
    
    if(qt==1){ # cos -> sin
        g = round(cos(th),3) #given
        gt = paste0("cos(θ)=",sprintf("%.03f",g),"\n\nQuadrant = ",rmn[q],
                    "\n\nFind sin(θ). Express sin(θ) using 3 significant figures.",
                    collapse="")
        aa = sqrt(1-g^2)
        a = sy*aa
    }
    if(qt==2){ # sin -> cos
        g = round(sin(th),3) #given
        gt = paste0("sin(θ) = ",sprintf("%.03f",g),"\n\nQuadrant = ",rmn[q],
                    "\n\nFind cos(θ). Express cos(θ) using 3 significant figures.",
                    collapse="")
        aa = sqrt(1-g^2)
        a = sx*aa
    }
    if(qt==3){ # cos -> tan
        g = round(cos(th),3) #given
        gt = paste0("cos(θ) = ",sprintf("%.03f",g),"\n\nQuadrant = ",rmn[q],
                    "\n\nFind tan(θ). Express tan(θ) using 3 significant figures.",
                    collapse="")
        aa = sqrt((1-g^2)/g^2)
        a = sx*sy*aa
    }
    if(qt==4){ # tan -> cos
        g = signif(tan(th),3) #given
        if(abs(g)>10){
            gt = paste0("tan(θ) = ",sprintf("%.01f",g),"\n\nQuadrant = ",rmn[q],
                        "\n\nFind cos(θ). Express cos(θ) using 3 significant figures.",
                        collapse="")
        } else if(abs(g)>1){
            gt = paste0("tan(θ) = ",sprintf("%.02f",g),"\n\nQuadrant = ",rmn[q],
                        "\n\nFind cos(θ). Express cos(θ) using 3 significant figures.",
                        collapse="")
        } else {
            gt = paste0("tan(θ) = ",sprintf("%.03f",g),"\n\nQuadrant = ",rmn[q],
                        "\n\nFind cos(θ). Express cos(θ) using 3 significant figures.",
                        collapse="")
        }
        
        aa = sqrt(1/(g^2+1))
        a = sx*aa
    }
    if(qt==5){ # sin -> tan
        g = round(sin(th),3) #given
        gt = paste0("sin(θ) = ",sprintf("%.03f",g),"\n\nQuadrant = ",rmn[q],
                    "\n\nFind tan(θ). Express tan(θ) using 3 significant figures.",
                    collapse="")
        aa = sqrt(g^2/(1-g^2))
        a = sx*sy*aa
    }
    if(qt==6){ # tan -> sin
        g = signif(tan(th),3) #given
        if(abs(g)>10){
            gt = paste0("tan(θ) = ",sprintf("%.01f",g),"\n\nQuadrant = ",rmn[q],
                        "\n\nFind sin(θ). Express sin(θ) using 3 significant figures.",
                        collapse="")
        } else if(abs(g)>1) {
            gt = paste0("tan(θ) = ",sprintf("%.02f",g),"\n\nQuadrant = ",rmn[q],
                        "\n\nFind sin(θ). Express sin(θ) using 3 significant figures.",
                        collapse="")
        } else {
            gt = paste0("tan(θ) = ",sprintf("%.03f",g),"\n\nQuadrant = ",rmn[q],
                        "\n\nFind sin(θ). Express sin(θ) using 3 significant figures.",
                        collapse="")
        }
        aa = sqrt(g^2/(g^2+1))
        a = sy*aa
    }
    
    if(aa>10){
        atex = sprintf("%.1f",a)
    } else if(aa>1){
        atex = sprintf("%.2f",a)
    } else {
        atex = sprintf("%.3f",a)
    }
    qstr = gt
    ans = atex
    q = paste0(i,',"',qstr,'",',ans,",,,,60,,,typing",collapse="")
    write(q,file=fnam,append=TRUE)
}









