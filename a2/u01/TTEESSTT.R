mu = 220
sig = sample(8:30,2)
ns = sample(6:12,2)
app_mes = sig*2/sqrt(ns)
app_me_diff = sqrt(sum(app_mes^2))

mu1 = mu-app_me_diff/2
mu2 = mu+app_me_diff/2
n1 = ns[1]
n2 = ns[2]
sig1 = sig[1]
sig2 = sig[2]

is_diff_signif = T #sample(c(T,F),1)

while(T){
    sam1 = round(rnorm(n1,mu1,sig1))
    sam2 = round(rnorm(n2,mu2,sig2))
    xbd = abs(mean(sam2)-mean(sam1))
    rsd = numeric()
    howmany = numeric()
    for(i in 1:100){
        for(i in 1:1000){
            shuff = sample(c(sam1,sam2))
            rs1 = shuff[1:n1]
            rs2 = shuff[(n1+1):(n1+n2)]
            rsd = c(rsd,abs(mean(rs1)-mean(rs2)))
        }
        howmany = c(howmany,sum(rsd<xbd))
        rsd = numeric()
        if(mean(howmany)<900 && length(howmany)>10){
            break
        }
        if(max(howmany)>950 && length(howmany)>10 && !is_diff_signif){
            break
        }
        if(mean(howmany)<970 && length(howmany)>10 && is_diff_signif){
            break
        }
        if(mean(howmany)>998 && length(howmany)>20 && is_diff_signif){
            break
        }
    }
    print(howmany)
    if(is_diff_signif){
        if(min(howmany)>980 && mean(howmany)<996 && length(howmany)==100){
            break
        }
    } else {
        if(mean(howmany)>900 && max(howmany)<950 && length(howmany)==100){
            break
        }
    }
}
print(sam1)
print(sam2)
print(is_diff_signif)