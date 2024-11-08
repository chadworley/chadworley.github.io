library("exams")
n = 30
outdir = "outcanvas"
genname = "u07_"

probs = c("01_is_relation_a_function.Rmd",
          "02_are_points_a_function.Rmd",
          "03_are_connections_a_function.Rmd",
          "04_is_curve_a_function.Rmd",
          "05_evaluate_function.Rmd",
          "06_eval_func_from_graph.Rmd",
          "07_inv_func_from_graph.Rmd")

pnts = c(3,3,3,3,3,3,3)

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
# 
# pm = c("03_venn_probs.Rmd",
#        "04_ind_or_mut_exclu.Rmd",
#        "05_cards.Rmd",
#        "06_winlose.Rmd",
#        "07_bobhappy.Rmd",
#        "08_scratchoff_value.Rmd",
#        "09_ski_paths.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,2,5,4,4,3,2),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))