library("exams")
n = 30
outdir = "outcanvas"
genname = "u06_"

probs = c("04_quadratic_formula_complex.Rmd",
          "05_solve_cubic_easy_integers.Rmd",
          "06_solve_cubic_one_real.Rmd",
          "07_add_complex.Rmd",
          "08_subtract_complex.Rmd",
          "09_multiply_complex.Rmd",
          "10_check_complex_solution.Rmd",
          "11_read_complex_plot.Rmd",
          "12_complex_modulus.Rmd",
          "13_solve_polynomial_complex_roots.Rmd")
pnts = c(4,5,5,2,2,3,4,3,3,5)

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,stems)
for(i in 1:length(probs)){
  exams2canvas(probs[i],
               n=n,
               dir=outdir,
               points=pnts[i],
               maxattempts = 10,
               name=names[i],
               template = "canvas_qti12.xml",
               cloze = list(enumerate = FALSE))
}
# 
# pm = c("03_venn_probs.Rmd",
#        "04_ind_or_mut_exclu.Rmd",
#        "05_cards.Rmd",
#        "06_winlose.Rmd",
#        "07_bobhappy.Rmd",
#        "08_scratchoff_value.Rmd",
#        "09_ski_paths.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(4,2,5,4,4,3,2),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))