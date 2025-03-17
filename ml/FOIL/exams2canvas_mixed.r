library("exams")
n = 30
outdir = "outcanvas"
genname = "FOIL_"

# probs = c("05_multiply_binomials.Rmd",
#           "06_FOIL_A_ne_0.Rmd",
#           "07_FOIL_A_ne_0_negs.Rmd")
# 
# pnts = rep(4,length(probs))
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


probs = list("06_FOIL_A_ne_0.Rmd",
             "07_FOIL_A_ne_0_negs.Rmd",
             "07_FOIL_A_ne_0_negs.Rmd",
             "07_FOIL_A_ne_0_negs.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(3,3,3,3),
             maxattempts = 10,
             name=paste0(genname,"_mastery_2"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))