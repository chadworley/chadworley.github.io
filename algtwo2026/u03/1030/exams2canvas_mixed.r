library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list(c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
#           c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"))
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(1,length(pm)),
#              maxattempts = 8,
#              name="et1030",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# Classwork 1
# pm = list("factor_integer.Rmd",
#           "factor_integer.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(3,3),
#              maxattempts = 5,
#              name="c1030_pos_int_factors",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork 2

pm = list("prime_factorization.Rmd",
          "prime_factorization.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(3,3),
             maxattempts = 5,
             name="c1031_prime_factorization",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


