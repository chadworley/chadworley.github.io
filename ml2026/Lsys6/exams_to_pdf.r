library("exams")
n = 20
outdir = "outcanvas"

### Entrance ticket
pm = list("turtle_commands_B.Rmd",
          "turtle_commands_B.Rmd")

# exams2pdf(pm,n=12,dir="pdfs")

# exams2nops(pm,1,dir = "pdf")


# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5,5),
#              maxattempts = 5,
#              name="ET_1017_L-sys_turtle_pattern",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

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


