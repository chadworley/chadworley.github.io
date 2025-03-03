library("exams")
n = 20
outdir = "outcanvas"
genname = "trig_review"

# probs = c("12_canoe_river_degs.Rmd",
#           "13_canoe_river_rads.Rmd")
# 
# pnts = c(4,4)
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



pm = list("01_radians_from_arc_length.Rmd",
          "02_plot_angle_rads.Rmd",
          c("03_1_sin_get_opp.Rmd","03_2_sin_get_hyp.Rmd",
            "03_3_sin_get_ang.Rmd","03_4_cos_get_adj.Rmd",
            "03_5_cos_get_hyp.Rmd","03_6_cos_get_ang.Rmd",
            "03_7_tan_get_opp.Rmd","03_8_tan_get_adj.Rmd",
            "03_9_tan_get_ang.Rmd"),
          "04_unit_circ_float.Rmd",
          c("05_1_sin_from_cos_and_Q.Rmd","05_2_sin_from_tan_and_Q.Rmd",
            "05_3_cos_from_sin_and_Q.Rmd","05_4_cos_from_tan_and_Q.Rmd",
            "05_5_tan_from_sin_and_Q.Rmd","05_6_tan_from_cos_and_Q.Rmd"),
          c("06_1_shadow_speed.Rmd","06_2_sunset_shadow_speed.Rmd"),
          "07_polar_to_rect.Rmd",
          "08_rect_to_polar.Rmd",
          "09_canoe_river_rads.Rmd",
          c("10_1_UC_sin_rad.Rmd","10_2_UC_cos_rad.Rmd","10_3_UC_tan_rad.Rmd")
)

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))