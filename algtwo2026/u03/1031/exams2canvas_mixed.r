library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list("sum_prod.Rmd",
#           "sum_prod.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 8,
#              name="et1031",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# Classwork 1
pm = list("factor_quadratic.Rmd",
          "factor_quadratic.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(6,6),
             maxattempts = 5,
             name="c1031_factor_quadratic",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 2

# pm = list("prime_factorization.Rmd",
#           "prime_factorization.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(3,3),
#              maxattempts = 5,
#              name="c1031_prime_factorization",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


