fn = "pb1103_factor_prime_a.Rmd"
shortfn = strsplit(fn,"_")[[1]][1]
nlow = 1
nhigh = 50

sss = "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Get (Random) File</title>
    <script>
        function getRandomPDF() {
            const randomNum = Math.floor(Math.random() * WID) + BOT; // 201 to 220
            const paddedNum = String(randomNum).padStart(3, '0'); // Pad with zeros
            return `p1029_v${paddedNum}.pdf`;
        }
        
        window.onload = function() {
            const link = document.getElementById('random-pdf-link');
            link.href = getRandomPDF();
        };
    </script>
</head>
<body>
    <h1>Download your p1029:</h1>
    <p>
    <a id='random-pdf-link' href='#'>Download</a>
</body>
    </html>"

makeem = function(fn,shortfn,nlow,nhigh){
    directory_path = shortfn
    if (!dir.exists(directory_path)) {
        dir.create(directory_path)
    }
    wid = nhigh-nlow+1
    for(jjj in nlow:nhigh){
        rmarkdown::render(input = fn,
                          output_file = paste0(shortfn,"/",shortfn,"_v",sprintf("%03d",jjj)),
                          params = list(rseed = jjj,
                                        showsol = F))
        rmarkdown::render(input = fn,
                          output_file = paste0(shortfn,"/",shortfn,"_SOL_",sprintf("%03d",jjj)),
                          params = list(rseed = jjj,
                                        showsol = T))
    }
    
    sss = gsub("p1029",shortfn,sss,fixed=T)
    sss = gsub("WID",wid,sss,fixed=T)
    sss = gsub("BOT",nlow,sss,fixed=T)
    fileConn<-file(paste0(shortfn,"/",shortfn,".html"))
    writeLines(sss, fileConn)
    close(fileConn)
}

makeem(fn,shortfn,nlow,nhigh)
