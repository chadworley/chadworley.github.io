library("exams")
n = 30
outdir = "outcanvas"

genname = "023"

probs = c("01_sine_get_opposite.Rmd",
          "02_sine_get_hypotenuse.Rmd",
          "03_sine_get_angle.Rmd",
          "04_cosine_get_adjacent.Rmd",
          "05_cosine_get_hypotenuse.Rmd",
          "06_cosine_get_angle.Rmd",
          "07_tangent_get_opposite.Rmd",
          "08_tangent_get_adjacent.Rmd",
          "09_tangent_get_angle.Rmd")

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

probs = rep(list(probs),10)

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

