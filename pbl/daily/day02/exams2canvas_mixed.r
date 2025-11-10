library("exams")
n = 30
outdir = "outcanvas"

probs = list("et_tra_rot_gli_mir.Rmd",
             "et_tra_rot_gli_mir.Rmd")
pnts = c(2,2)
exams2canvas(probs,
             n=n,
             dir=outdir,
             points=pnts,
             maxattempts = 6,
             name="et1107",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE)
)

# probs = list("cq_recognize_Frieze_group.Rmd")
# pnts = c(14)
# exams2canvas(probs,
#              n=n,
#              dir=outdir,
#              points=pnts,
#              maxattempts = 6,
#              name="c1030_recognize_Frieze_group",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE)
# )
