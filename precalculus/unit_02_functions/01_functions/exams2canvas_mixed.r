library("exams")
n = 30
outdir = "outcanvas"

genname = "012"

probs = c("01_is_relation_a_function.Rmd",
          "02_are_points_a_function.Rmd",
          "03_are_connections_a_function.Rmd",
          "04_is_curve_a_function.Rmd",
          "05_evaluate_function.Rmd",
          "05b_eval_func_from_graph.Rmd",
          "05c_inv_func_from_graph.Rmd",
          "06_f_of_neg_a.Rmd",
          "07_neg_of_f_a.Rmd",
          "08_negs.Rmd",
          "09_even_or_odd_polynomial.Rmd",
          "10_even_or_odd_graph.Rmd",
          "11_domain_range_basic.Rmd",
          "12_f_of_a_plus_h.Rmd",
          "13_AROC_from_graph.Rmd",
          "14_instant_AROC.Rmd")

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

probs = list(c("01_is_relation_a_function.Rmd",
               "02_are_points_a_function.Rmd",
               "03_are_connections_a_function.Rmd",
               "04_is_curve_a_function.Rmd"),
            c("05_evaluate_function.Rmd",
              "05b_eval_func_from_graph.Rmd",
              "05c_inv_func_from_graph.Rmd"),
            "08_negs.Rmd",
            c("09_even_or_odd_polynomial.Rmd",
            "10_even_or_odd_graph.Rmd"),
            "11_domain_range_basic.Rmd",
            "13_AROC_from_graph.Rmd",
            "14_instant_AROC.Rmd")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

