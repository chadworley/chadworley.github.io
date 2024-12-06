library("exams")
n = 30
outdir = "outcanvas"
genname = "wk16_"

# probs = c("05_area_perimeter_counting.Rmd")
# 
# pnts = c(4)
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=pnts[i],
#                maxattempts = 10,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }


pm = list("01_circle_measures.Rmd",
          "02_car_force_power.Rmd",
          "03_cake_mass.Rmd",
          "04_cake_frosting.Rmd",
          "05_area_perimeter_counting.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(3,3,3,3,3),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))