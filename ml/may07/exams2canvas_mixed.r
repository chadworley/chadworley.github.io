library("exams")
n = 30
outdir = "outcanvas"
genname = "may07"

probs = c("slide_rule.Rmd")

# pnts = c(4)
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


pm = list("slide_rule.Rmd",
          "slide_rule.Rmd",
          "slide_rule.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,2),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))