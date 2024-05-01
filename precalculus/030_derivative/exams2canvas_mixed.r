library("exams")
n = 30
outdir = "outcanvas"
genname = "030"

probs = c("15_get_tangent_mx+b.Rmd")

pnts = c(3)

stems = tools::file_path_sans_ext(sub(".*/", "", probs))
names = paste0(genname,"_",stems)
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

# probs = list(c("01_SOE_matrix_form.Rmd","02_SOE_augmented_form.Rmd"),
#              "06_RREF_sagemath.Rmd",
#              "08_check_if_inverse.Rmd",
#              "11_use_inverse_to_solve.Rmd",
#              "13_determinant_3x3.Rmd",
#              "15_can_solve_sys.Rmd",
#              "17_row_ops_equiv_mat_mult.Rmd"
#              )
# 
# exams2canvas(probs,
#              n=n,
#              dir=outdir,
#              points=c(3,3,4,4,4,3,4),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))