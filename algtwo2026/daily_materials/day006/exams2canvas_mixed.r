library("exams")
n = 20
outdir = "outcanvas"

### Entrance ticket
# pm = list("et01_eval_fun_n_inv_table.Rmd",
#           "et02_eval_fun_n_inv_from_graph.Rmd",
#           c("et03A_f_neg_a.Rmd","et03B_neg_f_a.Rmd","et03C_neg_f_neg_a.Rmd"),
#           c("et03A_f_neg_a.Rmd","et03B_neg_f_a.Rmd","et03C_neg_f_neg_a.Rmd"))
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(1,1,1,1),
#              maxattempts = 6,
#              name="ET_09_05",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork 1
# pm = list(c("01_f_apc.Rmd","02_f_amc.Rmd"),
#           c("03_fa_pc.Rmd","04_fa_mc.Rmd"),
#           "05_two_shifts.Rmd",
#           "05_two_shifts.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_eval_translated_func",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# Classwork 2
pm = list(c("10_shift_table_left.Rmd","11_shift_table_right.Rmd"),
          c("12_shift_table_up.Rmd","13_shift_table_down.Rmd"),
          "14_translate_table.Rmd",
          "15_translate_graph.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,2,2),
             maxattempts = 8,
             name="OCW_function_translations",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


