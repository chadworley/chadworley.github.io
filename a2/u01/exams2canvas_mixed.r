library("exams")
n = 30
outdir = "outcanvas"
genname = "u01_"

probs = c("05_sample_percentiles.Rmd",
          "06_ME_dice_tots.Rmd",
          "07_stoplight_sim.Rmd")

pnts = c(5,5,5)

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
# exams2canvas(probs,
#              n=n,
#              dir=outdir,
#              points=c(10,10,10,10),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))