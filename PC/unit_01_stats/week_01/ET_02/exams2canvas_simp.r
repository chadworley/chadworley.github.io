library("exams")
n = 30
outdir = "outcanvas"
exams2canvas("ET_02.rmd",
             n=n,
             dir=outdir,
             points=5,
             name="ET_02",
             maxattempts = 1,
             template = "canvas_qti12.xml")

