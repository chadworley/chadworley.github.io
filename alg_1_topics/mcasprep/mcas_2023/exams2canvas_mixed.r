library("exams")
n = 12
outdir = "outcanvas"

genname = "scattered"

# probs = c("mcas23_sch_samp.Rmd")
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,"_",stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=2,
#                maxattempts = 20,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }

probs = c("mcas23_sch_samp.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=10,
             maxattempts = 10,
             name=paste0(genname,"_practice_DD"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))