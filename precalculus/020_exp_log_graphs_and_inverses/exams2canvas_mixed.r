library("exams")
n = 30
outdir = "outcanvas"

genname = "020"

# probs = c("15_exp_shift_stretch_equiv.Rmd",
#           "16_exp_base_and_stretch_eq.Rmd")
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,"_",stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=2,
#                maxattempts = 20,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }

probs = c("01_solve_exponent.Rmd",
          "02_cooling_solve_time.Rmd",
          "08_volume_of_rotation.Rmd",
          "09_Lorenz_system.Rmd",
          "11_half_life_from_graph.Rmd",
          "12_doubling_time_from_graph.Rmd",
          "13_doubling_time_from_eq.Rmd",
          "14_half-life_from_eq.Rmd",
          "15_exp_shift_stretch_equiv.Rmd",
          "16_exp_base_and_stretch_eq.Rmd")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

