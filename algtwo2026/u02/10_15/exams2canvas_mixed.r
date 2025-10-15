library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list("et01_intervals_check.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2),
#              maxattempts = 6,
#              name="ET_1015",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# # Classwork 1
pm = list("01_intervals_inc_dec_pos_neg_quad.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(6),
             maxattempts = 8,
             name="OCW_1015_quad_intrvls",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 2
# pm = list("02_intervals_check.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(7),
#              maxattempts = 8,
#              name="OCW_1014_B_fun_feats_ntrvls",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


