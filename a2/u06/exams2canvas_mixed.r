library("exams")
n = 30
outdir = "outcanvas"
genname = "u06_"

probs = c("14_factor_diff_of_squares.Rmd",
          "15_factor_sum_of_squares.Rmd",
          "16_quadratic_from_zeros.Rmd",
          "17_cubic_from_zeros.Rmd",
          "18_cubic_from_zeros_doub.Rmd",
          "19_cubic_from_zeros_trip.Rmd",
          "20_cubic_from_zeros_comp.Rmd",
          "21_polynomial_ends.Rmd",
          "22_polynomial_ends_B.Rmd")
pnts = c(3,3,4,5,5,5,6,1,6)

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