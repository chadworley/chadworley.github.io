library("exams")
n = 30
outdir = "outcanvas"
genname = "u11_"

probs = c("13_ticket_prices.Rmd",
          "14_resize_image_even_border.Rmd",
          "15_optimize_run_swim.Rmd",
          "16_nth_score.Rmd")

pnts = c(4,3,3,3)

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


# pm = list("m01_sqrt_lake_area.Rmd",
#           "m03_translate_flip_sqrt.Rmd",
#           "m17_radical_dom_rng.Rmd",
#           "m07_sqrt_line_extraneous.Rmd",
#           "m06_translate_flip_cbrt.Rmd",
#           "m09_expndd_rational_featrs.Rmd",
#           "m12_add_rationals.Rmd",
#           "m14_mult_rationals.Rmd",
#           "m16_inverse_rational.Rmd"
#           )
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2,2,2,2,2,2,2,2,2),
#              maxattempts = 4,
#              name=paste0(genname,"_mastery"),
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))