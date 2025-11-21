library("exams")
n = 40
outdir = "outcanvas"

### Entrance ticket
pm = list("simplify_radical.Rmd",
          "solve_sqr_x_eq_E.Rmd",
          "complete_the_square_H.Rmd",
          "CTS_get_vertex_B.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(5,length(pm)),
             maxattempts = 8,
             name="at1121entrance",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# # # Classwork 1
# pm = list("solve_sqr_x_eq_E.Rmd",
#           "solve_sqr_x_eq_E.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(5,length(pm)),
#              maxattempts = 8,
#              name="at1120canvas_A",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# 
# # # Classwork 2
# pm = list("CTS_get_vertex.Rmd",
#           "CTS_get_vertex.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5),
#              maxattempts = 7,
#              name="at1120canvas_B",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# pm = list("CTS_get_vertex_B.Rmd",
#           "CTS_get_vertex_B.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5,5),
#              maxattempts = 8,
#              name="at1120canvas_C",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# 
