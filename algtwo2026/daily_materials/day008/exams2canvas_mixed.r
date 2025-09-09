library("exams")
n = 20
outdir = "outcanvas"

### Entrance ticket
pm = list(c("et04a_f_of_neg_a.Rmd","et04b_neg_of_f_a.Rmd","et04c_neg_of_f_neg_a.Rmd"),
          "et01_two_poly_which_refl_A.Rmd",
          "et03_two_poly_which_refl_C.Rmd",
          "et02_two_poly_which_refl_B.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(1,1,1,1),
             maxattempts = 6,
             name="ET_09_09",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 1
# pm = list("01_f_of_neg_a.Rmd",
#           "02_neg_of_f_a.Rmd",
#           "03_neg_of_f_neg_a.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2),
#              maxattempts = 8,
#              name="OCW_0909A_polynom_reflect_MC",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# Classwork 2
# pm = list("04_negs.Rmd","04_negs.Rmd","04_negs.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2),
#              maxattempts = 8,
#              name="OCW_0909B_polynom_reflect_v3",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# # Classwork 3
# pm = list("17_use_even_prop.Rmd",
#           "18_use_odd_prop.Rmd",
#           "14_even_or_odd_polynomial.Rmd",
#           "15_even_or_odd_graph.Rmd"
#           )
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_0909C_even_odd_funcs",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


