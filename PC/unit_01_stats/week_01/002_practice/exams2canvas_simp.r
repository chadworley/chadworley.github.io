library("exams")
n = 30
outdir = "outcanvas"
exams2canvas(c("calc_z.rmd","calc_EV.rmd"),
             n=n,
             dir=outdir,
             points=2,
             name="02_calculate_z_and_mu_of_discrete_variable",
             maxattempts = 1,
             template = "canvas_qti12.xml")
