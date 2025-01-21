library("exams")
n = 30
outdir = "outcanvas"
genname = "u12_"

probs = c("01_arc_length_from_frac.Rmd",
          "02_arc_length_from_degs.Rmd",
          "03_arc_len_frm_intrr_ang.Rmd",
          "04_arc_len_from_unit_arc.Rmd",
          "05_radians_from_r_L.Rmd",
          "06_radians_from_unit_arc.Rmd",
          "07_radians_from_arc_length.Rmd",
          "08_angle_conversions.Rmd")

pnts = c(2,2,2,2,2,2,2,6)

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


# pm = list("07_three_dim_dist.Rmd",
#           "12_dist_point_to_line.Rmd",
#           "18_circ_params_from_eq.Rmd",
#           "21_ellipse_get_pams.Rmd",
#           "03_points_in_overlap.Rmd",
#           "10_check_sols_ineq.Rmd",
#           "11_linear_programming.Rmd",
#           "13_tickets_soe.Rmd",
#           "14_resize_image_even_border.Rmd",
#           "m15_optimize_run_swim.Rmd",
#           "16_nth_score.Rmd",
#           "23_round_trip_ave_speed.Rmd",
#           "m25_cubic_regression.Rmd"
#           )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 4,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))