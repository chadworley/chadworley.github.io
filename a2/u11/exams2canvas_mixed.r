library("exams")
n = 30
outdir = "outcanvas"
genname = "u11_"

probs = c("17_circ_params_from_graph.Rmd",
          "18_circ_params_from_eq.Rmd",
          "19_circ_2nd_coordinate.Rmd",
          "20_fef_dist_ellipse.Rmd",
          "21_ellipse_get_pams.Rmd",
          "22_polynom_to_stndrd_ell.Rmd")

pnts = c(2,2,3,5,3,4)

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