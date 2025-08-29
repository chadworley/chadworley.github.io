library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list("et01_eval_fun_n_inv_from_dots.Rmd",
#           "et02_two-step_inverse_alg.Rmd",
#           "et02_two-step_inverse_alg.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2),
#              maxattempts = 6,
#              name="ET_08_29",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork
pm = list("01_ops_two_steps.Rmd",
          "02_two-step_inverse_alg.Rmd",
          "03_inverse_table.Rmd",
          "04_graph_inverse.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,4,2),
             maxattempts = 6,
             name="CW_08_29_create_inverse_funcs",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


