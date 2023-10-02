library("exams")
n = 50
outdir = "outcanvas"

genname = "factor_whole"

probs = c("guess_whole_nums_from_sum_and_prod.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 40,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

probs = c("guess_whole_nums_from_sum_and_prod.Rmd",
          "guess_whole_nums_from_sum_and_prod.Rmd",
          "guess_whole_nums_from_sum_and_prod.Rmd")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

