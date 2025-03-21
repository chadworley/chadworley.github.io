library("exams")
n = 100
outdir = "outcanvas"
genname = "heat_can_"
probs = c("01_get_R-val.Rmd")

pnts = rep(5,length(probs))

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

# allqs = c("plus_times.Rmd",
#           "plus_divide.Rmd",
#           "minus_times.Rmd",
#           "minus_divide.Rmd",
#           "times_plus.Rmd",
#           "times_minus.Rmd",
#           "divide_plus.Rmd",
#           "divide_minus.Rmd")

probs = list("01_get_R-val.Rmd",
             "01_get_R-val.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(3,3),
             maxattempts = 10,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))