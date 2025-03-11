library("exams")
n = 30
outdir = "outcanvas"
genname = "fctr_slv_quad_"
# probs = c("03_slv_quadratric.Rmd",
#           "04_slv_quadratric_int.Rmd")
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


probs = list("03_slv_quadratric.Rmd",
             "04_slv_quadratric_int.Rmd",
             "04_slv_quadratric_int.Rmd",
             "04_slv_quadratric_int.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(2,2,2,2),
             maxattempts = 10,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))