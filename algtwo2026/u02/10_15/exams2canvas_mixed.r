library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("et01_intervals_check.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2),
             maxattempts = 6,
             name="ET_1015",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# # Classwork 1
# pm = list("01_domain_range_basic.Rmd",
#           "01_domain_range_basic.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,4),
#              maxattempts = 8,
#              name="OCW_1014_A_domain_range",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


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


