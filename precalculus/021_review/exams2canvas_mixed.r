library("exams")
n = 30
outdir = "outcanvas"

genname = "021"

# Exponential through two points
# pH with log10(1:10) given. 
# decibels

# probs = c("01_check_complex_solution.Rmd",
#           "02_nth_score.Rmd",
#           "03_optimize_run_swim.Rmd",
#           "04_empirical_rule.Rmd",
#           "05_check_for_independence.Rmd",
#           "06_which_is_decay.Rmd",
#           "07_two-step_inverse_alg.Rmd",
#           "08_which_has_complex_sol.Rmd",
#           "09_simplify_complex_fraction.Rmd")

probs = c("11_logarithmic_form.Rmd")

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

# 
# exams2canvas(probs,
#                n=n,
#                dir=outdir,
#                points=3,
#                maxattempts = 6,
#                name=paste0(genname,"_mastery"),
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))

