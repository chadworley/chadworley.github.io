library("exams")
n = 30
outdir = "outcanvas"

genname = "008_prob_of_ave_CLT"

probs = c("prob_of_ave_CLT.Rmd",
          "prob_of_ave_CLT.Rmd",
          "prob_of_ave_CLT.Rmd")

#stems = tools::file_path_sans_ext(sub(".*/", "", probs))
#names = paste0(genname,"_",stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=2,
#                maxattempts = 20,
#                name=names[i],
#                template = "canvas_qti12.xml")
# }

exams2canvas(probs[1],
             n=n,
             dir=outdir,
             points=2,
             maxattempts = 20,
             name=paste0(genname,"_practice"),
             template = "canvas_qti12.xml")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml")


myhtml = paste0('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>SQ ',genname,'</title>
<style type="text/css">
body{font-family: Arial, Helvetica, Sans;}
</style>
<meta charset="utf-8" />
</head>
<body>
<h2>Shared Questions (',genname,')</h2>
##\\exinput{exercises}##
</body>
</html>
')

# fileConn<-file("mytemplate.html")
# writeLines(myhtml, fileConn)
# close(fileConn)

# exams2html(probs,
#            n=1,
#            dir=outdir,
#            name=paste0(genname,"_shared_questions"),
#            converter = "pandoc-mathjax",
#            mathjax = TRUE,
#            template = "mytemplate.html")
