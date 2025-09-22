library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list("et01_two-step_inverse_alg.Rmd",
#           "et01_two-step_inverse_alg.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(1,1),
#              maxattempts = 6,
#              name="ET_09_19",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork 1
pm = list("stretch_shift_corresponding_pnts.Rmd",
          "stretch_shift_corresponding_pnts.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(6,6),
             maxattempts = 8,
             name="OCW_09_19_stretch_and_shift",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))

# Classwork 2
# pm = list(c("10_shift_table_left.Rmd","11_shift_table_right.Rmd"),
#           c("12_shift_table_up.Rmd","13_shift_table_down.Rmd"),
#           "14_translate_table.Rmd",
#           "15_translate_graph.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_function_translations",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

