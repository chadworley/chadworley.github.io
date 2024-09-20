library("exams")
n = 30
outdir = "outcanvas"
genname = "norm_prob"

probs = c("01_leftarea_from_x.Rmd",
          "02_rightarea_from_x.Rmd",
          "03_centralarea_from_x.Rmd",
          "04_twotailarea_from_x.Rmd",
          "05_betweenarea_from_x.Rmd")

pm = list(probs,probs,probs,probs)

# pnts = c(2,2,2,2,2)
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


exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,2,2),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))