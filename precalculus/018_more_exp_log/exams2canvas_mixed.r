library("exams")
n = 30
outdir = "outcanvas"

genname = "018"

probs = c("01_geometric_sum.Rmd",
          "02_geometric_convergence.Rmd",
          "03_geometric_series_infinite.Rmd",
          "04_fractal_lines.Rmd",
          "05_fractal_lines_finite_inf.Rmd",
          "06_fractal_area.Rmd")

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=2,
               maxattempts = 20,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}

exams2canvas(probs,
               n=n,
               dir=outdir,
               points=3,
               maxattempts = 6,
               name=paste0(genname,"_mastery"),
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))

