library("exams")
n = 12
outdir = "outcanvas"

### Entrance ticket
# pm = list("et01_match_parent_functions.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5),
#              maxattempts = 6,
#              name="ET_0925",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# # Classwork 1
pm = list("01_id_parent_and_shift.Rmd",
          "01_id_parent_and_shift.Rmd",
          "01_id_parent_and_shift.Rmd",
          "01_id_parent_and_shift.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(4,4,4,4),
             maxattempts = 8,
             name="OCW_0925_ID_parent_and_shift",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


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


