library("exams")
n = 30
outdir = "outcanvas"

probs = c("01_sd_pop_int.Rmd",
          "02_sd_sam_int.Rmd",
          "03_pop_sd_discrete_pd.Rmd",
          "04_estimate_SD.Rmd",
          "05_pop_sum_two_lotteries.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0("005_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml")
}

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 5,
               name="005_st_dev_mixed",
               template = "canvas_qti12.xml")