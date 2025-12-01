library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("et01_EZ_two-step_equations.Rmd",
          "et02_shift_squaring.Rmd",
          "et03_intervals_inc_dec_pos_neg_quad.Rmd",
          "et04_solve_a1_standard_eq_0.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 8,
             name="at1201entrance",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# # Classwork 1
pm = list("quad_formula_decimal.Rmd",
          "quad_formula_decimal.Rmd",
          "quad_formula_decimal.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(4,length(pm)),
             maxattempts = 8,
             name="at1201cA_quad_formula",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# 
# # # Classwork 2
pm = list("cannon_balloon.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(3),
             maxattempts = 8,
             name="at1201cB_cannon_and_balloon",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# pm = list("vertex_form_animation.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2),
#              maxattempts = 8,
#              name="at1124canvas_C_vrtx_form_anim",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


