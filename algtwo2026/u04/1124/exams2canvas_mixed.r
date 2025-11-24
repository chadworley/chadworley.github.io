library("exams")
n = 20
outdir = "outcanvas"

### Entrance ticket
# pm = list("simplify_radical.Rmd",
#           "solve_sqr_x_eq_E.Rmd",
#           "complete_the_square_H.Rmd",
#           "CTS_get_vertex_B.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(5,length(pm)),
#              maxattempts = 8,
#              name="at1121entrance",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# # Classwork 1
# pm = list("complete_the_square_F.Rmd",
#           "complete_the_square_F.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(4,length(pm)),
#              maxattempts = 8,
#              name="at1124canvas_A_cts_eq_rad_sol",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# 
# # # Classwork 2
# pm = list("flip_parabola.Rmd",
#           "flip_parabola.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,4),
#              maxattempts = 7,
#              name="at1124canvas_B_flip_parabola",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


pm = list("vertex_form_animation.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2),
             maxattempts = 8,
             name="at1124canvas_C_vrtx_form_anim",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


