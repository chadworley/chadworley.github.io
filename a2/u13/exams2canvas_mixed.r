library("exams")
n = 30
outdir = "outcanvas"
genname = "u13_"

probs = c("21_trigs_from_uc_point_Q1.Rmd",
          "22_pnt_n_slope_from_ang_Q1.Rmd")

pnts = c(3,3)

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