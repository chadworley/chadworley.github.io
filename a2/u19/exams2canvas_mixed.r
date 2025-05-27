library("exams")
n = 30
outdir = "outcanvas"
genname = "s19_"

probs = c("21_multiple_transforms.Rmd")

pnts = c(3)

# pnts = rep(6,length(probs))


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

##############################################################
# genname = "s18"
# 
# pm = list(
#     "04_common_base_quad.Rmd",
#     c("08_solve_expo_base2.Rmd","09_solve_expo_base10.Rmd"),
#     "13_solve_exponent.Rmd",
#     "15_solve_exponential.Rmd",
#     "16_solve_logarithmic.Rmd",
#     c("33_log10_inverse_table.Rmd","34_log2_inverse_table.Rmd"),
#     c("37_semi-log_get_exp.Rmd","38_semi-log_get_log.Rmd"),
#     c("41_solve_e_to_x.Rmd","42_solve_ln_x.Rmd"),
#     "54_crdnt_tbl_shftd_exp2.Rmd",
#     "55_crdnt_tbl_shftd_log2.Rmd"
# )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(2,length(pm)),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))