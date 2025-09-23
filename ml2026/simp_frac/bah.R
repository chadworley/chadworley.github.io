
tops = c(24, 30, 32, 40, 42, 45, 48, 52, 56, 60, 63, 72, 75, 80, 84)
bots = c(96, 105, 108, 120, 144, 150)
top = 40 #sample(tops,1)
bot = 96 #sample(bots,1)

simpfrac = function(top=52,bot=96){
    gcd2 <- function(a, b) {
        if (b == 0) a else Recall(b, a %% b)
    }
    gcd <- function(...) Reduce(gcd2, c(...))
    tsimp = round(top/gcd2(top,bot))
    bsimp = round(bot/gcd2(top,bot))
    ans = paste0("\\frac{",tsimp,"}{",bsimp,"}",collapse="")
    print(ans)
}

simpfrac(top,bot)

