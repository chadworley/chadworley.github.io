library("exams")
n = 50
outdir = "outcanvas"
genname = "ELIM"

probs = c("01_elim_sub.Rmd",
          "02_elim_add.Rmd",
          "03_elim_mult_sub.Rmd",
          "04_elim_mult_add.Rmd",
          "05_elim_y_sub.Rmd",
          "06_elim_y_add.Rmd",
          "07_elim_y_mult_sub.Rmd",
          "08_elim_y_mult_add.Rmd")
pnts = c(4,4,4,4,4,4,4,4)

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
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


n = 30
probs = rep(list(probs),4)

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(5,5,5,5),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))