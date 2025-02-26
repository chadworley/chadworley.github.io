library("exams")
n = 30
outdir = "outcanvas"
genname = "trig_"
probs = c("01_shadow_speed.Rmd",
          "02_sunset_shadow_speed.Rmd",
          "03_bearing_distance_decomp.Rmd")

# pnts = rep(2,length(probs))
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

# allqs = c("plus_times.Rmd",
#           "plus_divide.Rmd",
#           "minus_times.Rmd",
#           "minus_divide.Rmd",
#           "times_plus.Rmd",
#           "times_minus.Rmd",
#           "divide_plus.Rmd",
#           "divide_minus.Rmd")

probs = list(c("01_shadow_speed.Rmd","02_sunset_shadow_speed.Rmd"),
             "03_bearing_distance_decomp.Rmd",
             "03_bearing_distance_decomp.Rmd",
             "03_bearing_distance_decomp.Rmd")

exams2canvas(probs,
             n=n,
             dir=outdir,
             points=c(2,2,2,2),
             maxattempts = 8,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))