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
             maxattempts = 5,
             name="c1028b_combine_like_terms",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 2

pm = list("multiply_2digits.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(6),
             maxattempts = 5,
             name="c1028a_box_mult_2digit_nums",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


