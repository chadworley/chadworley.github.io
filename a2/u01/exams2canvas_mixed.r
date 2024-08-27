library("exams")
n = 30
outdir = "outcanvas"
genname = "u01_"

probs = c("05_basic_data_analysis.Rmd",
          "06_big_data_analysis.Rmd",
          "07_read_histogram.Rmd",
          "08_identify_shape.Rmd",
          "09_make_hist_see_shape.Rmd")

pnts = c(5,5,5,2,4)

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