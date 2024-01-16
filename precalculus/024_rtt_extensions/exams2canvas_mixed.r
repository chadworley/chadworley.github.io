library("exams")
n = 30
outdir = "outcanvas"

genname = "024"

probs = c("17_match_parametrics.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

# probs = list(c("02_approaching_height.Rmd",
#                "03_base_from_alttd_angs.Rmd",
#                "04_plr_vect_add_simp.Rmd"),
#              c("07_polar_to_rect.Rmd",
#                "08_rect_to_polar.Rmd"),
#              c("11_unit_circ_intro.Rmd",
#                "12_unit_circ_special.Rmd",
#                "13_unit_circ_float.Rmd"),
#              "14_parametric_trig_sums.Rmd",
#              "15_rotate_point.Rmd",
#              "16_optimize_theatre.Rmd"
#              )
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# 
