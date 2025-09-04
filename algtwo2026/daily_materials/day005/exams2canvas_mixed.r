library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("et01_are_points_a_function.Rmd",
          "et02_two-step_inverse_alg.Rmd",
          "et03_graph_inverse.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(1,1,1),
             maxattempts = 6,
             name="ET_09_04",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 1
# pm = list("03_f_neg_a.Rmd",
#           "04_neg_f_a.Rmd",
#           "05_neg_f_neg_a.Rmd",
#           c("03_f_neg_a.Rmd","04_neg_f_a.Rmd","05_neg_f_neg_a.Rmd"),
#           c("03_f_neg_a.Rmd","04_neg_f_a.Rmd","05_neg_f_neg_a.Rmd"),
#           c("03_f_neg_a.Rmd","04_neg_f_a.Rmd","05_neg_f_neg_a.Rmd"))
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2,2,2),
#              maxattempts = 8,
#              name="OCW_eval_func_w_negs",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# Classwork 2
# pm = list("01_f_negs_table_easier.Rmd",
#           "02_fun_reflects.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,4),
#              maxattempts = 8,
#              name="OCW_function_reflections",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 

