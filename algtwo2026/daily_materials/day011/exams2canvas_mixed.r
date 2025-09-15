library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("et01_EZ_two-step_equations.Rmd",
          "et01_EZ_two-step_equations.Rmd",
          "et01_EZ_two-step_equations.Rmd",
          "et01_EZ_two-step_equations.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(1,1,1,1),
             maxattempts = 6,
             name="ET_09_15",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))



# # Classwork 1
# pm = list("11_even_or_odd_polynomial.Rmd",
#           "12_even_or_odd_graph.Rmd",
#           "13_use_even_prop.Rmd",
#           "14_use_odd_prop.Rmd"
#           )
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_0909_even_odd_funcs",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# 
