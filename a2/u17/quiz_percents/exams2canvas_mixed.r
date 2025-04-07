library("exams")
n = 30
outdir = "outcanvas"
genname = "u17_prcnt_of_more_less"

# probs = c("01_percent_of.Rmd",
#           "02_percent_more.Rmd",
#           "03_percent_less.Rmd")
# 
# pnts = c(2,2,2)
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=pnts[i],
#                maxattempts = 10,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }



pm = list(c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
          c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
          c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
          c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
          c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
          c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd")
)

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(1,length(pm)),
             maxattempts = 6,
             name=paste0(genname,"_mstry"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))