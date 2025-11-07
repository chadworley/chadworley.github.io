library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("factor_by_grouping.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(5),
             maxattempts = 8,
             name="at1107entrance",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# Classwork 1
pm = list("factor_trinomial_by_grouping.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(8),
             maxattempts = 7,
             name="at1107canvas",
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


