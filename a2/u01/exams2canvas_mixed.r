library("exams")
n = 30
outdir = "outcanvas"
genname = "u01_"

probs = c("01_sam_stat_pop_prop.Rmd",
          "02_survey_experi_obsstu.Rmd",
          "03_sample_bias.Rmd",
          "04_corr_or_cause.Rmd",
          "05_basic_data_analysis.Rmd",
          "06_big_data_analysis.Rmd",
          "07_read_histogram.Rmd",
          "08_make_hist_see_shape.Rmd",
          "09_ME_dice_tots.Rmd",
          "10_prop_test_sim.Rmd",
          "11_resample_mean_ME.Rmd")

pnts = c(2,2,2,2,4,4,3,3,4,4,4)

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
#              points=c(10,10,10,10),
#              maxattempts = 6,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))