library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("solve_sqr_x_eq_A.Rmd",
          "solve_sqr_x_eq_B.Rmd",
          "solve_sqr_x_eq_C.Rmd",
          "solve_sqr_x_eq_D.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(3,length(pm)),
             maxattempts = 8,
             name="at1119entrance",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# # Classwork 1
pm = list("complete_the_square_K.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(8),
             maxattempts = 7,
             name="at1119canvas_CTS_odd_b",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# 
# # Classwork 2
# 
# pm = list("complete_the_square_C.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5),
#              maxattempts = 7,
#              name="at1117canvas_B",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# pm = list("complete_the_square_E.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(6),
#              maxattempts = 7,
#              name="at1117canvas_C",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 

