library("exams")
n = 30
outdir = "outcanvas"
# genname = "u01_"

# probs = c("08_inverse_table.Rmd",
#           "09_two-step_inverse_alg.Rmd",
#           "10_graph_inverse.Rmd",
#           "11_f_of_neg_a.Rmd",
#           "12_neg_of_f_a.Rmd",
#           "13_negs.Rmd",
#           "14_even_or_odd_polynomial.Rmd",
#           "15_even_or_odd_graph.Rmd",
#           "16_domain_range_basic.Rmd")
# 
# pnts = c(5,3,3,3,3,3,4,3,3)
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


pm = list("05a_evaluate_linear_function.Rmd",
          "06_eval_func_from_graph.Rmd",
          "05c_evaluate_functions_tab.Rmd",
          "07_inv_func_from_graph.Rmd",
          "08b_inverse_table.Rmd")


exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,2,2,2),
             maxattempts = 6,
             name="CW_08_27_eval_funcs_and_invs",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


