library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("ID_1_trans.Rmd",
          "ID_1_trans.Rmd",
          "ID_1_trans.Rmd",
          "ID_1_trans.Rmd",
          "ID_1_trans.Rmd",
          "ID_1_trans.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(1,1,1,1,1,1),
             maxattempts = 6,
             name="ET_1022",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# # Classwork 1
# pm = list("asymp_exp.Rmd",
#           "asymp_log.Rmd",
#           "asymp_recip.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2),
#              maxattempts = 8,
#              name="OCW_0930_asymptote_shift",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork 2
# pm = list("01_shift_sqrt.Rmd",
#           "02_shift_abs.Rmd",
#           "03_shift_squaring.Rmd",
#           "04_shift_cube.Rmd",
#           "05_shift_cbrt.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2,2),
#              maxattempts = 8,
#              name="OCW_0924_B_shift_parents",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


