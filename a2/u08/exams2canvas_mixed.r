library("exams")
n = 30
outdir = "outcanvas"
genname = "u08_"

probs = c("08_intervals_check.Rmd",
          "09_translate_graph.Rmd",
          "10_stretch_graph.Rmd")

pnts = c(3,3,3)

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


# pm = list(c("01_is_relation_a_function.Rmd",
#             "02_are_points_a_function.Rmd",
#             "03_are_connections_a_function.Rmd",
#             "04_is_curve_a_function.Rmd"),
#           c("05_evaluate_function.Rmd",
#             "06_eval_func_from_graph.Rmd",
#             "07_inv_func_from_graph.Rmd"),
#           "08_inverse_table.Rmd",
#           "09_two-step_inverse_alg.Rmd",
#           "10_graph_inverse.Rmd",
#           "13_negs.Rmd",
#           "14_even_or_odd_polynomial.Rmd",
#           "15_even_or_odd_graph.Rmd",
#           c("17_use_even_prop.Rmd",
#             "18_use_odd_prop.Rmd"),
#           "16_domain_range_basic.Rmd"
#           )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(1,1,1,1,1,1,1,1,1,1),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))