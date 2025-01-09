library("exams")
n = 5
outdir = "outcanvas"
genname = "u11_"

# probs = c("23_round_trip_ave_speed.Rmd",
#           "24_lagrange_polynomial.Rmd",
#           "25_cubic_regression.Rmd",
#           "26_predict_with_trendline.Rmd")
# 
# pnts = c(3,4,4,4)
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


pm = list("03_points_in_overlap.Rmd",
          "07_three_dim_dist.Rmd",
          "10_check_sols_ineq.Rmd",
          "12_dist_point_to_line.Rmd",
          c("13_tickets_soe.Rmd","14_resize_image_even_border.Rmd"),
          "m15_optimize_run_swim.Rmd",
          "16_nth_score.Rmd",
          "18_circ_params_from_eq.Rmd",
          "21_ellipse_get_pams.Rmd",
          "m25_cubic_regression.Rmd"
          )

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 4,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))