library("exams")
n = 20
outdir = "outcanvas"

### Entrance ticket
# pm = list("et_translate_graph.Rmd",
#           "et_ab_to_xy_shift.Rmd",
#           "et_ab_to_xy_stretch.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,4),
#              maxattempts = 6,
#              name="ET_1001",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# # Classwork 1
# pm = list("07_hor_squeeze_desc.Rmd",
#           "08_hor_stretch_desc.Rmd",
#           "09_ver_squeeze_desc.Rmd",
#           "10_ver_stretch_desc.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2),
#              maxattempts = 8,
#              name="OCW_1001_scaling_descriptions",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# Classwork 2
pm = list(c("11_hor_squeeze.Rmd","12_hor_stretch.Rmd","13_ver_squeeze.Rmd","14_ver_stretch.Rmd"),
          c("11_hor_squeeze.Rmd","12_hor_stretch.Rmd","13_ver_squeeze.Rmd","14_ver_stretch.Rmd"),
          c("11_hor_squeeze.Rmd","12_hor_stretch.Rmd","13_ver_squeeze.Rmd","14_ver_stretch.Rmd"),
          c("11_hor_squeeze.Rmd","12_hor_stretch.Rmd","13_ver_squeeze.Rmd","14_ver_stretch.Rmd"),
          c("11_hor_squeeze.Rmd","12_hor_stretch.Rmd","13_ver_squeeze.Rmd","14_ver_stretch.Rmd"))
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,2,2,2),
             maxattempts = 8,
             name="OCW_1001_B_stretch_eqs",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


