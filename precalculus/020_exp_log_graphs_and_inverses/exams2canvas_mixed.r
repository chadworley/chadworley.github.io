library("exams")
n = 30
outdir = "outcanvas"

genname = "020"

probs = c("07_Nose_Hoover.Rmd",
          "08_volume_of_rotation.Rmd",
          "09_Lorenz_system.Rmd",
          "10_Lorenz_attractor.Rmd",
          "11_half_life_from_graph.Rmd",
          "12_doubling_time_from_graph.Rmd",
          "13_doubling_time_from_eq.Rmd",
          "14_half-life_from_eq.Rmd")

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

# probs = list(probs)
# probs = rep(probs,10)
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))

