library("exams")
n = 30
outdir = "outcanvas"
genname = "u01_"

probs = c("09_read_histogram.Rmd",
          "10_identify_shape.Rmd",
          "11_make_hist_see_shape.Rmd",
          "12_sample_percentiles.Rmd")

pnts = c(6,3,5,5)

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