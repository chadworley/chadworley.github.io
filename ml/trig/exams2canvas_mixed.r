library("exams")
n = 100
outdir = "outcanvas"
genname = "trig_"
probs = c("01_sine_get_opposite.Rmd",
          "02_sine_get_hypotenuse.Rmd",
          "03_sine_get_angle.Rmd",
          "04_cosine_get_adjacent.Rmd",
          "05_cosine_get_hypotenuse.Rmd",
          "06_cosine_get_angle.Rmd",
          "07_tangent_get_opposite.Rmd",
          "08_tangent_get_adjacent.Rmd",
          "09_tangent_get_angle.Rmd")

pnts = rep(2,length(probs))

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

# allqs = c("plus_times.Rmd",
#           "plus_divide.Rmd",
#           "minus_times.Rmd",
#           "minus_divide.Rmd",
#           "times_plus.Rmd",
#           "times_minus.Rmd",
#           "divide_plus.Rmd",
#           "divide_minus.Rmd")

# probs = list(allqs,
#              allqs,
#              allqs,
#              allqs,
#              allqs,
#              allqs,
#              allqs,
#              allqs,
#              allqs,
#              allqs)
# 
# exams2canvas(probs,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2,2,2,2,2,2,2),
#              maxattempts = 10,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))