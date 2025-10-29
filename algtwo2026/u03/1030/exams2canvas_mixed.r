library("exams")
n = 40
outdir = "outcanvas"

### Entrance ticket
pm = list(c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"),
          c("foil_get_a.Rmd","foil_get_b.Rmd","foil_get_c.Rmd"))
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(1,length(pm)),
             maxattempts = 8,
             name="et1030",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# # Classwork 1
# pm = list("foil_get_a.Rmd",
#           "foil_get_b.Rmd",
#           "foil_get_c.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(3,3,3),
#              maxattempts = 5,
#              name="c1029_expand_quad",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork 2

# pm = list("multiply_2digits.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(6),
#              maxattempts = 5,
#              name="c1028a_box_mult_2digit_nums",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


