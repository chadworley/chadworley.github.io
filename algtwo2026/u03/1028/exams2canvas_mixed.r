library("exams")
n = 40
outdir = "outcanvas"

### Entrance ticket
# pm = list("sum_OI.Rmd",
#           "sum_OI.Rmd",
#           "sum_OI.Rmd",
#           "sum_OI.Rmd",
#           "sum_OI.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(1,1,1,1,1),
#              maxattempts = 6,
#              name="et1028",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# # Classwork 1
pm = list("combine_like_terms.Rmd",
          "combine_like_terms.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(3,3),
             maxattempts = 6,
             name="c1028a_combine_like_terms",
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


