library("exams")
n = 30
outdir = "outcanvas"

genname = "014"

probs = c("03_two-step_inverse_alg.Rmd",
          "04_rational_inverse.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2, #c(2,4)[i],
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

# probs = c("02_intervals_inc_dec_pos_neg_quad.Rmd",
#           "03_trans_refl_abs_graph_MC.Rmd",
#           "04_compose_table.Rmd",
#           "05_compose_graphs.Rmd",
#           "06_intervals_sinusoidal.Rmd",
#           "07_translate_table.Rmd",
#           "08_stretch_table.Rmd",
#           "09_translate_and_stretch.Rmd")
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))

