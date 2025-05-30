library("exams")
n = 30
outdir = "outcanvas"
genname = "s17_mortgage"

# probs = c("22_mortgage.Rmd")
# 
# pnts = rep(2,length(probs))
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



pm = list(
    "01_mortgage.Rmd",
    "01_mortgage.Rmd",
    "01_mortgage.Rmd",
    "01_mortgage.Rmd"
)

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(1,length(pm)),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))