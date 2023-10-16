library("exams")
n = 30
outdir = "outcanvas"

genname = "014"

probs = c("05_graph_inverse.Rmd",
          "06_graph_limits.Rmd",
          "07_solve_quadratric_simple.Rmd",
          "08_limit_algebraic_hole.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2, #c(2,4)[i],
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

probs = c("01_compose_algebraic.Rmd",
          "02_inverse_table.Rmd",
          "03_two-step_inverse_alg.Rmd",
          "04_rational_inverse.Rmd",
          "05_graph_inverse.Rmd",
          "06_graph_limits.Rmd",
          "07_solve_quadratric_simple.Rmd",
          "08_limit_algebraic_hole.Rmd")

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

