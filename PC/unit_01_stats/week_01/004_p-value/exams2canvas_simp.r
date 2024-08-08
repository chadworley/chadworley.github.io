library("exams")
n = 30
outdir = "outcanvas"

probs = c("01_hyptest_single_mean.Rmd","02_hyptest_one_prop.Rmd","03_hyptest_2_means_data.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0("004_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 15,
               name=names[i],
               template = "canvas_qti12.xml")
}


exams2canvas(probs,
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 10,
               name="004_p-value_mixed",
               template = "canvas_qti12.xml")