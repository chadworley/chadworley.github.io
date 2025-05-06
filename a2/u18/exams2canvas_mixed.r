library("exams")
n = 30
outdir = "outcanvas"
genname = "s18_"

probs = c("14_two-step_inverse_alg.Rmd",
          "15_solve_exponential.Rmd",
          "16_solve_logarithmic.Rmd",
          "17_equal_temperament_get_freq.Rmd",
          "18_equal_temperament_get_key.Rmd",
          "19_cents.Rmd",
          "20_f2_from_cents.Rmd",
          "21_equal_temperament_fifth_error.Rmd",
          "22_earthquake_magnitude.Rmd",
          "23_earthquake_energy.Rmd",
          "24_earthquake_nrg_rat.Rmd",
          "25_earthquake_mag_diff.Rmd",
          "26_pH.Rmd",
          "27_hydrogen_ion_conc.Rmd",
          "28_pOH.Rmd",
          "29_hydroxide_ion_conc.Rmd")

pnts = rep(2,length(probs))

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
# genname = "s17_annuity_"
# 
# pm = list(
#     "23_life_annuity.Rmd",
#     "23_life_annuity.Rmd"
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