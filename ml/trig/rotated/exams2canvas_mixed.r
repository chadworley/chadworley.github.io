library("exams")
n = 50
outdir = "outcanvas"
genname = "trig_"

# probs = c("21_trigs_from_uc_point_Q1.Rmd",
#           "22_pnt_n_slope_from_ang_Q1.Rmd")
# 
# pnts = c(3,3)
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


pm = list(c("mm1_sin_get_opp.Rmd","mm4_cos_get_adj.Rmd","mm7_tan_get_opp.Rmd"),
          c("mm2_sin_get_hyp.Rmd","mm5_cos_get_hyp.Rmd","mm8_tan_get_adj.Rmd"),
          c("mm3_sin_get_ang.Rmd","mm6_cos_get_ang.Rmd","mm9_tan_get_ang.Rmd"),
          c("mm1_sin_get_opp.Rmd","mm2_sin_get_hyp.Rmd","mm3_sin_get_ang.Rmd"),
          c("mm4_cos_get_adj.Rmd","mm5_cos_get_hyp.Rmd","mm6_cos_get_ang.Rmd"),
          c("mm7_tan_get_opp.Rmd","mm8_tan_get_adj.Rmd","mm9_tan_get_ang.Rmd"))

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 10,
             name=paste0(genname,"mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))