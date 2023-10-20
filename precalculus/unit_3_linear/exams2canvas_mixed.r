library("exams")
n = 30
outdir = "outcanvas"

genname = "015_linear"

probs = c("01_arithmetic_seq_find_term.Rmd",
          "02_arithmetic_seq_find_index.Rmd",
          "03_arithmetic_seq_find_d.Rmd",
          "04_arithmetic_seq_find_sum.Rmd",
          "05_predict_with_trendline.Rmd",
          "06_slope_intercept_system.Rmd",
          "07_standard_form_system.Rmd",
          "08_linear_programming.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}


probs = list("m1_arith_sum.Rmd",
             "05_predict_with_trendline.Rmd",
             c("06_slope_intercept_system.Rmd","07_standard_form_system.Rmd"),
             "08_linear_programming.Rmd")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

