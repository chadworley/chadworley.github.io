library("exams")
n = 30
outdir = "outcanvas"
genname = "Apr08_"

probs = c("04_percent_changes.Rmd",
          "05_certificate_of_deposit.Rmd",
          "06_exponential_population.Rmd",
          "07_mug_cooling.Rmd")

pnts = c(2,2,2,2)

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=pnts[i],
               maxattempts = 10,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}


# 
# pm = list(c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
#           c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
#           c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
#           c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd"),
#           c("01_percent_of.Rmd","02_percent_more.Rmd","03_percent_less.Rmd")
# )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 6,
#              name=paste0(genname,"mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))