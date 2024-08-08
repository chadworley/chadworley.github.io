library("exams")
n = 30
outdir = "outcanvas"

genname = "019"

probs = c("01_exp_product.Rmd",
          "02_exp_quotient.Rmd",
          "03_exp_compound.Rmd",
          "04_power_product.Rmd",
          "05_log_plus_log.Rmd",
          "06_log_minus_log.Rmd",
          "07_log_power.Rmd",
          "08_log_change_base.Rmd",
          "09_log_exp_cancel.Rmd",
          "10_exp_log_cancel.Rmd")

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

probs = list(probs)
probs = rep(probs,10)

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

