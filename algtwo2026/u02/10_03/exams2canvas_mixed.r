library("exams")
n = 50
outdir = "outcanvas"

### Entrance ticket
pm = list("et01_1pnt_V_H_2steps.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(3),
             maxattempts = 6,
             name="ET_1003",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# # # Classwork 1
# pm = list("01_ID_shift_stretch.Rmd",
#           "01_ID_shift_stretch.Rmd",
#           "01_ID_shift_stretch.Rmd",
#           "01_ID_shift_stretch.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_1002_A_ID_shift_stretch",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 
# 
# # Classwork 2
# pm = list("02_all_2s_one_H_one_V.Rmd",
#           "02_all_2s_one_H_one_V.Rmd",
#           "02_all_2s_one_H_one_V.Rmd",
#           "02_all_2s_one_H_one_V.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_1002_B_geteq_shift_stretch",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))
# 

