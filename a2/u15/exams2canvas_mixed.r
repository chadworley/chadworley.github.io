library("exams")
n = 12
outdir = "outcanvas"
genname = "u15_"

probs = c("20_spatiotemporal_wave.Rmd")

pnts = c(4)

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



# pm = list(c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd"),
#           c("14a_UC_sin_deg.Rmd","14b_UC_cos_deg.Rmd","14c_UC_tan_deg.Rmd","14d_UC_sin_rad.Rmd","14e_UC_cos_rad.Rmd","14f_UC_tan_rad.Rmd")
# )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(1,length(pm)),
#              maxattempts = 10,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))