library("exams")
n = 30
outdir = "outcanvas"
genname = "u02_"
probs = c("scale_rectangular_prism.Rmd")

pnts = c(6)

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
#              points=c(5,5,5),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))