library("exams")
n = 30
outdir = "outcanvas"

genname = "013"

probs = c("02_intervals_inc_dec_pos_neg_quad.Rmd",
          "03_trans_refl_abs_graph_MC.Rmd",
          "04_compose_table.Rmd",
          "05_compose_graphs.Rmd")

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

# probs = c("01_match_parent_functions.Rmd",
#           "02_intervals_inc_dec_pos_neg_quad.Rmd")
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
