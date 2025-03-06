library("exams")
n = 30
outdir = "outcanvas"
genname = "FOIL_"
probs = c("01_FOIL.Rmd")

# pnts = rep(5,length(probs))
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=pnts[i],
#                maxattempts = 20,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }

# allqs = c("plus_times.Rmd",
#           "plus_divide.Rmd",
#           "minus_times.Rmd",
#           "minus_divide.Rmd",
#           "times_plus.Rmd",
#           "times_minus.Rmd",
#           "divide_plus.Rmd",
#           "divide_minus.Rmd")

probs = list("01_FOIL.Rmd",
             "01_FOIL.Rmd",
             "01_FOIL.Rmd",
             "01_FOIL.Rmd",
             "01_FOIL.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(3,3,3,3,3),
             maxattempts = 10,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))