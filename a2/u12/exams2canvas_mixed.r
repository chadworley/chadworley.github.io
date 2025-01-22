library("exams")
n = 30
outdir = "outcanvas"
genname = "u12_"

probs = c("09_standard_pos_deg.Rmd",
          "10_large_angle_deg.Rmd",
          "11_coterminal_degs.Rmd",
          "12_plot_angle_rads.Rmd",
          "13_plot_coterminal_rads.Rmd",
          "14_large_angle_rad.Rmd",
          "15_sector_area.Rmd",
          "16_conical_ratio.Rmd")

pnts = c(2,2,2,2,2,2,3,4)

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


# pm = list("01_arc_length_from_frac.Rmd",
#           "02_arc_length_from_degs.Rmd",
#           "03_arc_len_frm_intrr_ang.Rmd",
#           "04_arc_len_from_unit_arc.Rmd",
#           "05_radians_from_r_L.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 4,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))