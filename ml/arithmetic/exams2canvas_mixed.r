library("exams")
n = 30
outdir = "outcanvas"
genname = "arith_"
# probs = c("multiply_2digits.Rmd")
# 
# pnts = c(5)
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

probs = list("multiply_2digits.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(3,3,3,3,3),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))