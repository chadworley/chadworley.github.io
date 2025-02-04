library("exams")
n = 30
outdir = "outcanvas"
genname = "u13_"

probs = c("08_uc_other_coord_from_Q.Rmd",
          "09_uc_slope_from_x_and_Q.Rmd",
          "10_uc_x_from_slope_Q1.Rmd",
          "11_uc_x_y_from_slope_and_Q.Rmd")

pnts = c(3,3,3,3)

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


# pm = c("01_triangle_3rd_angle_deg.Rmd",
#        "03_right_tri_complems_deg.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(3,length(pm)),
#              maxattempts = 4,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))