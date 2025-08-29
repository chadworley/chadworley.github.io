library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list(c("et01a_are_points_a_function.Rmd","et01b_is_curve_a_function.Rmd"),
          "et02_eval_fun_n_inv_table.Rmd",
          "et03_eval_fun_n_inv_from_graph.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(1,2,2),
             maxattempts = 6,
             name="ET_08_28",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


## Classwork
# pm = list("01_identify_two_steps.Rmd",
#           "02_identify_three_steps.Rmd",
#           "03_two-step_inverse_alg.Rmd",
#           "04_inverse_table.Rmd",
#           "05_graph_inverse.Rmd")
# 
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 6,
#              name="CW_08_28_create_inverse_funcs",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


