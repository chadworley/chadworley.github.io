library("exams")
n = 30
outdir = "outcanvas"

genname = "016"

probs = c("06_solve_cubic_one_real.Rmd",
          "07_polynomial_ends.Rmd",
          "08_add_complex.Rmd",
          "09_subtract_complex.Rmd",
          "10_multiply_complex.Rmd",
          "11_read_complex_plot.Rmd")

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


# probs = c("03_quadratic_formula.Rmd",
#           "03_quadratic_formula.Rmd",
#           "04_quadratic_formula_complex.Rmd")
# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))

