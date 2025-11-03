library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list("foil_get_a.Rmd",
#           "foil_get_b.Rmd",
#           "foil_get_c.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2),
#              maxattempts = 6,
#              name="et1103",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# # Classwork 1
# pm = list("sum_prod.Rmd",
#           "sum_prod.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,4),
#              maxattempts = 6,
#              name="c1103_sum_and_product",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork 2

pm = list("factor_quadratic.Rmd",
          "factor_quadratic.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(5,5),
             maxattempts = 5,
             name="cb1103_factor_quadratic",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


