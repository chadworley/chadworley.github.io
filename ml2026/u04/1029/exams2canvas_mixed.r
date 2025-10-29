library("exams")
n = 40
outdir = "outcanvas"

### Entrance ticket
# pm = list("mult_tenths_units_tens.Rmd",
#           "mult_tenths_units_tens.Rmd",
#           "mult_tenths_units_tens.Rmd",
#           "mult_tenths_units_tens.Rmd",
#           "mult_tenths_units_tens.Rmd",
#           "multiply_2digits.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(1,1,1,1,1,3),
#              maxattempts = 6,
#              name="et1029",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# # Classwork 1
pm = list("combine_like_terms.Rmd",
          "combine_like_terms.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(4,4),
             maxattempts = 5,
             name="c1029_combine_like_terms",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


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


