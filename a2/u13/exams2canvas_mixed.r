library("exams")
n = 30
outdir = "outcanvas"
genname = "Pyth_Id_review_"

# probs = c("32_tan_from_sin_and_Q.Rmd")
# 
# pnts = c(3)
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


# pm = list("07_unit_hyp_pyth_thm.Rmd",
#           c("minimastery/mm1_sin_get_opp.Rmd","minimastery/mm4_cos_get_adj.Rmd","minimastery/mm7_tan_get_opp.Rmd"),
#           c("minimastery/mm2_sin_get_hyp.Rmd","minimastery/mm5_cos_get_hyp.Rmd","minimastery/mm8_tan_get_adj.Rmd"),
#           c("minimastery/mm3_sin_get_ang.Rmd","minimastery/mm6_cos_get_ang.Rmd","minimastery/mm9_tan_get_ang.Rmd"),
#           "23_plr_vect_add_simp.Rmd",
#           "06_reference_angle_rad.Rmd",
#           "24_polar_to_rect.Rmd",
#           "26_unit_circ_float.Rmd",
#           c("28_sin_from_cos_and_Q.Rmd","30_cos_from_sin_and_Q.Rmd"),
#           c("29_sin_from_tan_and_Q.Rmd","31_cos_from_tan_and_Q.Rmd"),
#           c("32_tan_from_sin_and_Q.Rmd","33_tan_from_cos_and_Q.Rmd"),
#           "34_parametric_trig_sums.Rmd"
#           )

pm = list(c("28_sin_from_cos_and_Q.Rmd","30_cos_from_sin_and_Q.Rmd"),
          c("29_sin_from_tan_and_Q.Rmd","31_cos_from_tan_and_Q.Rmd"),
          c("32_tan_from_sin_and_Q.Rmd","33_tan_from_cos_and_Q.Rmd"),
          c("28_sin_from_cos_and_Q.Rmd","30_cos_from_sin_and_Q.Rmd","29_sin_from_tan_and_Q.Rmd","31_cos_from_tan_and_Q.Rmd","32_tan_from_sin_and_Q.Rmd","33_tan_from_cos_and_Q.Rmd")
          )

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 6,
             name=paste0(genname,"mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))