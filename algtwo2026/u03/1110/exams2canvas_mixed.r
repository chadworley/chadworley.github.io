library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("match_factored_standard_A.Rmd",
          "match_factored_standard_B.Rmd",
          "match_factored_standard_C.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(4,length(pm)),
             maxattempts = 8,
             name="at1110entrance",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# Classwork 1
# pm = list("factor_quadratic_prime.Rmd",
#           "factor_quadratic_prime.Rmd",
#           "factor_quadratic_prime.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(5,5,5),
#              maxattempts = 7,
#              name="c1103_factor_prime_lead_coeff",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


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


