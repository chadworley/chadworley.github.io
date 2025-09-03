library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("et01_are_points_a_function.Rmd",
          "et02_two-step_inverse_alg.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2),
             maxattempts = 6,
             name="ET_09_03",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork
# pm = list("01_f_negs_table.Rmd",
#           "02_fun_reflects.Rmd",
#           "02_fun_reflects.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,2,2),
#              maxattempts = 8,
#              name="OCW_09_04_fnctn_reflections",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


