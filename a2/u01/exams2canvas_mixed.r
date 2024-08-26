library("exams")
n = 30
outdir = "outcanvas"
genname = "u01_"

probs = c("06_sd_pop_int.Rmd",
          "07_sd_sam_int.Rmd")

pnts = c(3,3)

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