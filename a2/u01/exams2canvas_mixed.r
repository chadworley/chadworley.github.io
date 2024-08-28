library("exams")
n = 30
outdir = "outcanvas"
genname = "u01_"

probs = c("07_sd_pop.Rmd",
          "08_sd_sam.Rmd",
          "09_sample_percentiles.Rmd")

pnts = c(4,4,6)

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