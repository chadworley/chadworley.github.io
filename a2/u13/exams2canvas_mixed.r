library("exams")
n = 30
outdir = "outcanvas"
genname = "u13_"

probs = c("23_plr_vect_add_simp.Rmd",
          "24_polar_to_rect.Rmd",
          "25_unit_circ_intro.Rmd",
          "26_unit_circ_float.Rmd",
          "27_match_parametrics.Rmd")

pnts = c(3,3,3,3,3)

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