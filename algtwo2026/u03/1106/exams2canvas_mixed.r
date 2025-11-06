library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list("ez_a1_factored_eq_0.Rmd",
#           "ez_primes_factored_eq_0.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 8,
#              name="et1106",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# Classwork 1
pm = list("solve_a1_standard_eq_0.Rmd",
          "solve_a_prime_eq_0.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(4,4),
             maxattempts = 6,
             name="ca1106_solve_by_factoring",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 2

pm = list("solve_a1_standard_eq_c2.Rmd",
          "solve_a1_eq_2sfs.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(4,4),
             maxattempts = 6,
             name="cb1106_first_make_zero",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


