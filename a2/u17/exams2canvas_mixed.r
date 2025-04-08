library("exams")
n = 30
outdir = "outcanvas"
genname = "u17_"

probs = c("04_percent_changes.Rmd",
          "05_certificate_of_deposit.Rmd",
          "06_exponential_population.Rmd",
          "07_equal_temperament_up.Rmd",
          "08_equal_temperament_down.Rmd",
          "09_mug_cooling.Rmd")

pnts = c(2,2,2,2,2,2)

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


# 
# pm = list(
#     "01_circle_to_wave.Rmd",
#     "13_mass_spring_period.Rmd",
#     "18_pick_wave_pams4.Rmd",
#     "15_pick_wave_pams2.Rmd",
#     "20_spatiotemporal_wave.Rmd",
#     "21_bobbing_duck.Rmd"
# )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))