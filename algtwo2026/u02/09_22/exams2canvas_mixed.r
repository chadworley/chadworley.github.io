library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
pm = list("et01_use_fsol_find_gsol.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(1),
             maxattempts = 6,
             name="ET_0922",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 1
pm = list("05_coordinate_transformation.Rmd",
          "05_coordinate_transformation.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2),
             maxattempts = 8,
             name="OCW_0922_coordnt_transfrmtn",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# Classwork 2
pm = list("01_trans_shortcut_new_x.Rmd",
          "02_trans_shortcut_new_y.Rmd",
          "03_get_new_x_with_shortcut.Rmd",
          "04_get_new_y_with_shortcut.Rmd",
          "05_coordinate_transformation.Rmd",
          "06_get_new_pnts_shortcut.Rmd")

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2,2,2,2,2,8),
             maxattempts = 8,
             name="OCW_0922_B_transform_shortcuts",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


