library("exams")
n = 20
outdir = "outcanvas"

### Entrance ticket
pm = list(c("11_hor_squeeze.Rmd","12_hor_stretch.Rmd","13_ver_squeeze.Rmd","14_ver_stretch.Rmd"),
          c("asymp_exp.Rmd","asymp_log.Rmd","asymp_recip.Rmd"),
          "et01_id_parent_and_shift.Rmd",
          "et01_id_parent_and_shift.Rmd",
          "shift_sqrt.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 6,
             name="at1202_review",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# # Classwork 1
pm = list("factor_a_prime_whole.Rmd",
          "factor_a_prime_whole.Rmd",
          "factor_a_times_dos.Rmd",
          "factor_a_times_dos.Rmd",
          "factor_a_times_EZ.Rmd",
          "factor_a_times_EZ.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(4,length(pm)),
             maxattempts = 6,
             name="at1202canvas_factor",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

 
# # # Classwork 2
# pm = list("cannon_balloon.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(3),
#              maxattempts = 8,
#              name="at1201cB_cannon_and_balloon",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# pm = list("vertex_form_animation.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2),
#              maxattempts = 8,
#              name="at1124canvas_C_vrtx_form_anim",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


